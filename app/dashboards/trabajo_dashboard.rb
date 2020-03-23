require "administrate/base_dashboard"

class TrabajoDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    planta: Field::String,
    ito: Field::String,
    descripcion: Field::String,
    total: Field::Number,
    fecha_termino: Field::String,
    avance: Field::Number,
    op: Field::Number,
    factura: Field::Number,
    observaciones: Field::String,
    i1: Field::String,
    i2: Field::String,
    i3: Field::String,
    i4: Field::String,
    i5: Field::String,
    i6: Field::String,
    i7: Field::String,
    i8: Field::String,
    i9: Field::String,
    i10: Field::String,
    i11: Field::String,
    i12: Field::String,
    v1: Field::Number,
    v2: Field::Number,
    v3: Field::Number,
    v4: Field::Number,
    v5: Field::Number,
    v6: Field::Number,
    v7: Field::Number,
    v8: Field::Number,
    v9: Field::Number,
    v10: Field::Number,
    v11: Field::Number,
    v12: Field::Number,
    centro_costo: Field::String,
    supervisor: Field::String,
    otros: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  id
  planta
  ito
  descripcion
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  id
  planta
  ito
  descripcion
  total
  fecha_termino
  avance
  op
  factura
  observaciones
  i1
  i2
  i3
  i4
  i5
  i6
  i7
  i8
  i9
  i10
  i11
  i12
  v1
  v2
  v3
  v4
  v5
  v6
  v7
  v8
  v9
  v10
  v11
  v12
  centro_costo
  supervisor
  otros
  created_at
  updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  planta
  ito
  descripcion
  total
  fecha_termino
  avance
  op
  factura
  observaciones
  i1
  i2
  i3
  i4
  i5
  i6
  i7
  i8
  i9
  i10
  i11
  i12
  v1
  v2
  v3
  v4
  v5
  v6
  v7
  v8
  v9
  v10
  v11
  v12
  centro_costo
  supervisor
  otros
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how trabajos are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(trabajo)
  #   "Trabajo ##{trabajo.id}"
  # end
end
