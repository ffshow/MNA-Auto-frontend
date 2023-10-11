import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mna/pages/garage/create/state/create_garage_cubit.dart';
import 'package:mna/swagger_generated_code/swagger.swagger.dart';

final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

class CreateGarageWidget extends StatelessWidget {
  const CreateGarageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateGarageCubit>(
      create: (BuildContext context) =>
          CreateGarageCubit(RepositoryProvider.of<Swagger>(context)),
      child: Builder(builder: (BuildContext context) {
        return BlocConsumer<CreateGarageCubit, CreateGarageState>(
          builder: (BuildContext context, CreateGarageState state) {
            return FormBuilder(
              key: _formKey,
              child: SizedBox(
                width: 250,
                child: FormBuilderTextField(
                  name: 'label',
                  initialValue: state.model?.label,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'Label',
                    suffixIcon: IconButton(
                      tooltip: 'Create',
                      onPressed: () => _create(context),
                      icon: const Icon(Icons.create),
                    ),
                  ),
                  onSubmitted: (value) => _create(context),
                  validator: FormBuilderValidators.compose<String>(
                    [
                      FormBuilderValidators.required<String>(),
                    ],
                  ),
                ),
              ),
            );
          },
          listenWhen: (CreateGarageState p, CreateGarageState c) {
            return p.status != c.status;
          },
          listener: (BuildContext context, CreateGarageState state) {
            // if (state.status.isSuccess) {
            //   ScaffoldMessenger.maybeOf(context)?.showSnackBar(
            //     SnackBar(
            //       content: Text(
            //           'Garage ${state.model?.label} has been created successfully'),
            //     ),
            //   );
            // }
            if (state.status.isFailure) {
              ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                SnackBar(
                  content: Text(state.error ?? 'Something went wrong!'),
                ),
              );
            }
          },
        );
      }),
    );
  }

  void _create(BuildContext context) {
    final bool isValid = _formKey.currentState?.saveAndValidate() ?? false;
    if (isValid) {
      final CreateGarage model = CreateGarage.fromJson(
        _formKey.currentState!.value,
      );

      context.read<CreateGarageCubit>().create(model);
      _formKey.currentState?.patchValue({'label': ''});
    }
  }
}
