# frozen_string_literal: true

json.array! @zips, partial: 'zips/zip', as: :zip
