import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:mna/pages/vehicle_create/state/create_vehicle_cubit.dart';
import 'package:mna/swagger_generated_code/client_index.dart';
import 'package:mna/utils/recase.dart';
import 'package:mna/utils/style.dart';

const SnackBar successSnackBar = SnackBar(
  content: Text('Vehicle has been created successfully'),
);

const SnackBar loadingSnackBar = SnackBar(
  content: Text('Creating a new vehicle...'),
);

final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

class CreateVechilePage extends StatelessWidget {
  const CreateVechilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateVehicleCubit>(
      create: (BuildContext context) => CreateVehicleCubit(
        RepositoryProvider.of<Swagger>(context),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add a vehicle'),
        ),
        body: BlocConsumer<CreateVehicleCubit, CreateVehicleState>(
          builder: (BuildContext context, CreateVehicleState state) {
            return FormBuilder(
              key: _formKey,
              child: Padding(
                padding: kEdgeAll8,
                child: SingleChildScrollView(
                  child: Wrap(
                    runSpacing: 16,
                    spacing: 16,
                    children: <Widget>[
                      // registration
                      FormBuilderTextField(
                        name: 'registration',
                        initialValue: state.vehicle?.registration,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          labelText: 'Registration',
                        ),
                        validator: FormBuilderValidators.compose<String>(
                          [
                            FormBuilderValidators.required<String>(),
                          ],
                        ),
                      ),
                      // commercial domination
                      FormBuilderTextField(
                        name: 'commercial_name',
                        initialValue: state.vehicle?.commercialName,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                            labelText: 'Commercial domination'),
                        validator: FormBuilderValidators.compose<String>([
                          FormBuilderValidators.required<String>(),
                        ]),
                      ),

                      // mileage
                      FormBuilderTextField(
                        name: 'mileage',
                        initialValue: state.vehicle?.mileage.toString(),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(labelText: 'Mileage'),
                        keyboardType: TextInputType.number,
                        valueTransformer: (value) {
                          return int.tryParse(value ?? '0');
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        validator: FormBuilderValidators.compose<String>([
                          FormBuilderValidators.required<String>(),
                        ]),
                      ),
                      // first circulation
                      FormBuilderDateTimePicker(
                        name: 'first_circulation',
                        initialValue: DateTime.tryParse(
                          state.vehicle?.firstCirculation ?? '',
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputType: InputType.date,
                        decoration: const InputDecoration(
                          labelText: 'First circulation date',
                        ),
                        validator: FormBuilderValidators.compose<DateTime?>([
                          FormBuilderValidators.required<DateTime?>(),
                        ]),
                        valueTransformer: (value) {
                          return value?.toUtc().toIso8601String();
                        },
                      ),
                      // serial number
                      FormBuilderTextField(
                        name: 'serial_number',
                        initialValue: state.vehicle?.serialNumber,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration:
                            const InputDecoration(labelText: 'Serial number'),
                        validator: FormBuilderValidators.compose<String>([
                          FormBuilderValidators.required<String>(),
                        ]),
                      ),
                      // chrono
                      FormBuilderTextField(
                        name: 'chrono',
                        initialValue: state.vehicle?.chrono,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(labelText: 'Chrono'),
                        validator: FormBuilderValidators.compose<String>([
                          FormBuilderValidators.required<String>(),
                        ]),
                      ),
                      // owner
                      FormBuilderDropdown(
                        name: 'owner_id',
                        initialValue: state.vehicle?.ownerId,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(labelText: 'Owner'),
                        items: List.generate(
                          3,
                          (int index) => DropdownMenuItem(
                            value: index == 0
                                ? '65005460b40777ab605fa163'
                                : index.toString(),
                            child: Text('Fake owner ${index + 1}'),
                          ),
                        ).toList(),
                      ),
                      // vehicle status
                      FormBuilderDropdown(
                        name: 'current_status',
                        // initialValue:
                        // state.vehicle?.current_status as VehicleStatus?,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(labelText: 'Status'),
                        valueTransformer: (VehicleStatus? value) => value?.name,
                        items: VehicleStatus.values
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e.str),
                                ))
                            .toList(),
                      ),
                      // sold at
                      FormBuilderDateTimePicker(
                        name: 'sold_at',
                        initialValue: DateTime.tryParse(
                          state.vehicle?.soldAt ?? '',
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputType: InputType.date,
                        decoration: const InputDecoration(
                          labelText: 'Sold at',
                        ),
                        validator: FormBuilderValidators.compose<DateTime?>([
                          FormBuilderValidators.required<DateTime?>(),
                        ]),
                        valueTransformer: (DateTime? value) {
                          return value?.toUtc().toIso8601String();
                        },
                      ),
                      // collection date
                      FormBuilderDateTimePicker(
                        name: 'collection_date',
                        initialValue: DateTime.tryParse(
                            state.vehicle?.collectionDate ?? ''),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputType: InputType.date,
                        decoration: const InputDecoration(
                          labelText: 'Collection date',
                        ),
                        validator: FormBuilderValidators.compose<DateTime?>([
                          FormBuilderValidators.required<DateTime?>(),
                        ]),
                        valueTransformer: (value) {
                          return value?.toUtc().toIso8601String();
                        },
                      ),
                      // delivery date
                      FormBuilderDateTimePicker(
                        name: 'delivery_date',
                        initialValue: DateTime.tryParse(
                            state.vehicle?.deliveryDate ?? ''),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputType: InputType.date,
                        decoration: const InputDecoration(
                          labelText: 'Delivery date',
                        ),
                        validator: FormBuilderValidators.compose<DateTime?>([
                          FormBuilderValidators.required<DateTime?>(),
                        ]),
                        valueTransformer: (value) {
                          return value?.toUtc().toIso8601String();
                        },
                      ),
                      // expertise
                      FormBuilderChoiceChip(
                        name: 'expertise',
                        initialValue: state.vehicle?.expertise ?? false,
                        options: const [
                          FormBuilderChipOption(
                            value: true,
                            child: Text("Expertise"),
                          ),
                        ],
                      ),
                      // procedure ve
                      FormBuilderChoiceChip(
                        name: 'procedure_ve',
                        initialValue: state.vehicle?.procedureVe ?? false,
                        options: const [
                          FormBuilderChipOption(
                            value: true,
                            child: Text("Procedure VE"),
                          ),
                        ],
                      ),
                      //TODO tasks

                      // note
                      FormBuilderTextField(
                        name: 'note',
                        decoration: const InputDecoration(labelText: 'Note'),
                        minLines: 1,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: state.status.isLoading
                              ? null
                              : () {
                                  _create(context);
                                },
                          child: const Text('Submit'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          listenWhen:
              (CreateVehicleState previous, CreateVehicleState current) {
            return previous.status != current.status;
          },
          listener: (BuildContext context, CreateVehicleState state) {
            ScaffoldMessenger.maybeOf(context)?.hideCurrentSnackBar();

            if (state.status.isLoading) {
              ScaffoldMessenger.maybeOf(context)?.showSnackBar(loadingSnackBar);
            }

            if (state.status.isSuccess) {
              ScaffoldMessenger.maybeOf(context)?.showSnackBar(successSnackBar);
            }

            if (state.status.isFailure) {
              ScaffoldMessenger.maybeOf(context)?.showSnackBar(SnackBar(
                content: Text(state.error ?? 'Something went wrong'),
              ));
            }
          },
        ),
      ),
    );
  }

  void _create(BuildContext context) {
    final bool isValid = _formKey.currentState?.saveAndValidate() ?? false;
    if (isValid) {
      final Map<String, Object?> value = Map.of(_formKey.currentState!.value);
      //FIXME:
      value['owner_id'] = '65005460b40777ab605fa163';
      context.read<CreateVehicleCubit>().create(value);
    }
  }
}

enum VehicleStatus {
  toGetBack,
  toRecover,
  inTransit,
}

extension StatusStr on VehicleStatus {
  String get str => ReCase(name).titleCase;
}
