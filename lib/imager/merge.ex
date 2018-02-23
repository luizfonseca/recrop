defmodule Recrop.Imager.Merge do
  import Recrop.Imager.Decoder

  def merge_images!(list) do
    merge_image_with_children(list)
  end

  def merge_image_with_children(list) do
    for { key, _ } <- list["image"] do
      case key do
        "data" ->
          # TODO: get the value from value instead of the base64 sample
          create_image_file_from_base(Recrop.base64)
        "merge" ->
          sorted = reorganize_images_by_index(list["image"]["merge"])

          merge_image_with_children(sorted)

        _ ->
          IO.puts "Key is not mapped yet"
      end
    end
  end

  def reorganize_images_by_index(merge_node) do
    Enum.sort_by(merge_node, fn node ->
      node["index"]
    end)
  end
end
