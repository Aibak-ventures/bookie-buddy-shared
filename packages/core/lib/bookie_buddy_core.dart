/// Shared domain layer for Bookie Buddy's mobile and web apps.
library;

// Thermal-printer domain
export 'features/thermal_printer/domain/entities/print_ticket_entity/print_ticket_entity.dart';
export 'features/thermal_printer/domain/print_ticket_builder.dart';

// Booking / sales / product / client / service domain — extracted to
// support the shared receipt-rendering pipeline (bookie_buddy_ui). Full
// data layer / repository interfaces / usecases not ported — see
// docs/shared-packages-plan.md in the mobile repo.
export 'features/booking/domain/entities/booking_details_entity/booking_details_entity.dart';
export 'features/booking/domain/entities/booking_other_details_entity/booking_other_details_entity.dart';
export 'features/booking/domain/entities/booking_other_details_entity/room_guests_entity.dart';
export 'features/booking/domain/entities/booking_other_details_entity/room_meal_type_enum.dart';
export 'features/booking/domain/entities/booking_payment_history_entity/booking_payment_history_entity.dart';
export 'features/booking/domain/entities/booking_refund_history_entity/booking_refund_history_entity.dart';
export 'features/booking/domain/entities/booking_security_payment_entity/booking_security_payment_entity.dart';
export 'features/booking/domain/entities/measurement_value_entity/measurement_value_entity.dart';
export 'features/client/domain/entities/client_entity/client_entity.dart';
export 'features/product/domain/entities/product_entity/product_attributes_entity.dart';
export 'features/product/domain/entities/product_info_entity/product_info_entity.dart';
export 'features/sales/domain/entities/sale_details_entity/sale_details_entity.dart';
export 'features/service/domain/entities/service_entity/service_entity.dart';

// Cross-feature entities/enums the above depend on
export 'core/common/entities/additional_charges_entity/additional_charges_entity.dart';
export 'core/common/helpers/shop_field_helper.dart';
export 'core/common/entities/applied_tax_entity/applied_tax_entity.dart';
export 'core/common/entities/document_details_entity/document_details_entity.dart';
export 'core/common/entities/tax_configuration_entity/tax_configuration_entity.dart';
export 'core/common/entities/tax_summary_entity/tax_summary_entity.dart';
export 'core/common/entities/unavailable_products_entity/unavailable_products_entity.dart';
export 'core/common/entities/user_shop_entity/user_shop_entity.dart';
export 'core/constants/enums/backend_keyed_enum.dart';
export 'core/constants/enums/booking_rental_unit_enum.dart';
export 'core/constants/enums/booking_status_enums.dart';
export 'core/constants/enums/cooling_period_mode_enum.dart';
export 'core/constants/enums/gender_type_enums.dart';
export 'core/constants/enums/main_service_type_enums.dart';
export 'core/constants/enums/payment_method_enums.dart';
export 'core/constants/enums/shop_based_enums.dart';
export 'core/constants/enums/tax_calculation_type_enum.dart';
export 'core/constants/enums/taxable_component_enum.dart';
export 'utils/async/run_for_at_least.dart';
export 'utils/extensions/string_extensions.dart';
