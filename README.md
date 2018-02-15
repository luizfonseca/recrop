# Recrop

**TODO: Add description**

## Installation


** Requires ImageMagick **


If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `recrop` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:recrop, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/recrop](https://hexdocs.pm/recrop).

## Usage


### Router

You can use `mix trot.server` to initialize a webserver that deals with processing
base64 images using `POST` to the root path (in that case, `POST http://your_address:port/`)
or other address if you wish.


#### Format

```JSON
{
  "image": {
    "data": "data:h73247hg3264;",
    "merge": [ // ImageArray
      {
        "data": "data:2312123",
        "x": 1234,
        "y": 50,
        "index": 0
      },
      {
        "data": "data:2312123",
        "x": 1234,
        "y": 50,
        "index": 2
      },

    ],
    "crop": {
      "x": 200,
      "y": 200,
      "width": 300,
      "height": 300
    }
  }


}
```


#### Operations

Attention: All functions generate a new image based on the input.
The format is always PNG (transparent) unless you declare otherwise.

**Merge**:
You can merge an infinite amount of images (taking in consideration the memory available)
specifying the positioning (by X `OR` Y) and then the placing index.
If you want the order to be the one in the JSON, you don't need to specify it; but we highly recommend
the index spec to avoid problems with it.

You can access this function by using `Recrop.Imager.Merge.build(&/1)` or `Recrop.merge`


**Crop**:
You can specify a crop.
You can specify the width, height, scale and where the crop begins.
We have presets for `face`, `center`, `square`, `rounded`, `portrait` and `fill`.

You can access this function by using `Recrop.Imager.crop.build(&/1)` or `Recrop.crop`
