defmodule Recrop.Imager.Merge do
  import Recrop.Imager.Decoder

  def merge_images!(list) do
    merge_image_with_children(list)
  end

  def merge_image_with_children(list) do
    for { key, value } <- list.image do
      case key do
        "data" ->
          # TODO: get the value from value instead of the base64 sample
          create_image_file_from_base(Recrop.base64)
        "merge" ->
          reorganize_images_by_index(list.image.merge)

      end
    end
  end


  def reorganize_images_by_index() do

  end
end
