class Review < ApplicationRecord
  belongs_to :restaurant
  # La note d’un avis doit être un entier.
  ## Par exemple, un avis avec une note de 2,5 doit être invalide !
  validates :rating, numericality: { only_integer: true }
  # Un avis doit avoir un contenu,doit avoir une note.
  validates :content, :rating, presence: true
  # La note d’un avis doit être un nombre entre 0 et 5.
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }
end
