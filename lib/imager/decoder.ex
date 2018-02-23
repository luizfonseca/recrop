defmodule Recrop.Imager.Decoder do
  import Base


  @doc """
    This function receives a `base64` data
    and writes it to binary (into an image file)
    returns `:ok`
  """
  def create_image_file_from_base(base64) do
    "data:image/jpeg;base64," <> raw = base64
    { :ok, image_data } = decode64(raw)

    file_name = String.slice(raw, 15..25)
    file_path = Path.expand("~/Desktop")
    File.write("#{file_path}/#{file_name}.jpg", image_data, [:binary])
    :ok
  end
end
