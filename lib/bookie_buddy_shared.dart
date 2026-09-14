/// Shared domain + visual layer for Bookie Buddy's mobile and web apps.
///
/// `core/` is pure Dart by convention (see `scripts/check_core_purity.dart`);
/// `ui/` is Flutter-typed and depends on `core/`.
library;

// ---------------------------------------------------------------------------
// core/ — domain layer
// ---------------------------------------------------------------------------

// Thermal-printer domain
export 'core/features/thermal_printer/domain/entities/print_ticket_entity/print_ticket_entity.dart';
export 'core/features/thermal_printer/domain/print_ticket_builder.dart';

// Booking / sales / product / client / service domain — extracted to
// support the shared receipt-rendering pipeline (ui/). Full data layer /
// repository interfaces / usecases not ported — see
// docs/shared-packages-plan.md in the mobile repo.
export 'core/features/booking/domain/entities/booking_details_entity/booking_details_entity.dart';
export 'core/features/booking/domain/entities/booking_other_details_entity/booking_other_details_entity.dart';
export 'core/features/booking/domain/entities/booking_other_details_entity/room_guests_entity.dart';
export 'core/features/booking/domain/entities/booking_other_details_entity/room_meal_type_enum.dart';
export 'core/features/booking/domain/entities/booking_payment_history_entity/booking_payment_history_entity.dart';
export 'core/features/booking/domain/entities/booking_refund_history_entity/booking_refund_history_entity.dart';
export 'core/features/booking/domain/entities/booking_security_payment_entity/booking_security_payment_entity.dart';
export 'core/features/booking/domain/entities/measurement_value_entity/measurement_value_entity.dart';
export 'core/features/booking/domain/entities/unavailable_products_entity/unavailable_products_entity.dart';
export 'core/features/client/domain/entities/client_entity/client_entity.dart';
export 'core/features/product/domain/entities/product_entity/product_attributes_entity.dart';
export 'core/features/product/domain/entities/product_info_entity/product_info_entity.dart';
export 'core/features/sales/domain/entities/sale_details_entity/sale_details_entity.dart';
export 'core/features/service/domain/entities/service_entity/service_entity.dart';

// Cross-feature entities/enums the above depend on
export 'core/core/common/entities/additional_charges_entity/additional_charges_entity.dart';
export 'core/core/common/helpers/shop_field_helper.dart';
export 'core/core/common/entities/applied_tax_entity/applied_tax_entity.dart';
export 'core/core/common/entities/document_details_entity/document_details_entity.dart';
export 'core/core/common/entities/tax_configuration_entity/tax_configuration_entity.dart';
export 'core/core/common/entities/tax_summary_entity/tax_summary_entity.dart';
export 'core/core/common/entities/user_shop_entity/user_shop_entity.dart';
export 'core/core/constants/enums/backend_keyed_enum.dart';
export 'core/core/constants/enums/booking_rental_unit_enum.dart';
export 'core/core/constants/enums/booking_status_enums.dart';
export 'core/core/constants/enums/cooling_period_mode_enum.dart';
export 'core/core/constants/enums/gender_type_enums.dart';
export 'core/core/constants/enums/main_service_type_enums.dart';
export 'core/core/constants/enums/payment_method_enums.dart';
export 'core/core/constants/enums/shop_based_enums.dart';
export 'core/core/constants/enums/tax_calculation_type_enum.dart';
export 'core/core/constants/enums/taxable_component_enum.dart';
export 'core/utils/async/run_for_at_least.dart';
export 'core/utils/extensions/string_extensions.dart';

// ---------------------------------------------------------------------------
// ui/ — visual layer
// ---------------------------------------------------------------------------

export 'ui/features/thermal_printer/presentation/receipt_design/shared/receipt_canvas.dart';
export 'ui/features/thermal_printer/presentation/receipt_design/shared/monochrome.dart';
export 'ui/features/thermal_printer/presentation/receipt_design/shared/offscreen_render.dart';
export 'ui/features/thermal_printer/presentation/receipt_design/shared/receipt_date_formatter.dart';
export 'ui/features/thermal_printer/presentation/receipt_design/shared/receipt_shared_sections.dart';
export 'ui/features/thermal_printer/presentation/receipt_design/shared/shop_receipt_sections.dart';
export 'ui/features/booking/presentation/common/utils/booking_time_resolver.dart';
export 'ui/features/thermal_printer/presentation/receipt_design/builders/booking_receipt_canvas_builder.dart';
export 'ui/features/thermal_printer/presentation/receipt_design/builders/sales_receipt_canvas_builder.dart';
export 'ui/theme/status_ui_extensions.dart';
export 'ui/utils/extensions/receipt_format_extensions.dart';
export 'ui/utils/helpers/product_field_helper.dart';
