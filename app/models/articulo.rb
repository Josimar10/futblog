class Articulo < ApplicationRecord
  belongs_to :autor, optional: true
  validates :titulo, presence: {:message => "No puede estar vacío"}
  validates :contenido, presence:{:message => "No puede estar vacío"}, length: {minimum: 50,
  :message => "Es demasiado corto, escribe mínimo 50 carácteres"}
end
