<template>
  <song-displayer
    :track=" {
      name: '#252 A Skull in the Wood Stove - Blackfoot, Idaho',
      liked: true,
      artists: [
        {
          name: 'Small Town Murder',
        },
      ],
      album: {
        images: [
          {
            url: 'https://cdn-images.threadless.com/threadless-media/artist_shops/shops/crimeinsports/products/367809/shirt-1510957560-862ea2f22a55edc24c1ae72f7a396711.png?v=3&d=eyJvbmx5X21ldGEiOiBmYWxzZSwgImZvcmNlIjogZmFsc2UsICJvcHMiOiBbWyJ0cmltIiwgW2ZhbHNlLCBmYWxzZV0sIHt9XSwgWyJyZXNpemUiLCBbXSwgeyJ3aWR0aCI6IDk5Ni4wLCAiYWxsb3dfdXAiOiBmYWxzZSwgImhlaWdodCI6IDk5Ni4wfV0sIFsiY2FudmFzX2NlbnRlcmVkIiwgWzEyMDAsIDEyMDBdLCB7ImJhY2tncm91bmQiOiAiMDAwMDAwIn1dLCBbInJlc2l6ZSIsIFs4MDBdLCB7fV0sIFsiY2FudmFzX2NlbnRlcmVkIiwgWzgwMCwgODAwLCAiI2ZmZmZmZiJdLCB7fV0sIFsiZW5jb2RlIiwgWyJqcGciLCA4NV0sIHt9XV19',
          },
        ],
      }
    }"
  />
</template>

<script>

import SongDisplayer from '@/components/footer/left-footer/SongDisplayer.vue';

export default {
  components: {
    SongDisplayer,
  },
};
</script>
