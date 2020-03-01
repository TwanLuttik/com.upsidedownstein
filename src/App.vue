<template>
  <div id="app">
    <div>
      <navigationbar/>
      <img class="mainIMG" src="./assets/IMG_0984.jpg">
    </div>

    <div class="author">
      <p style="padding-right:5px;">Made By</p>
      <p class="link" @click="openLink('https://twitter.com/TwanLuttik')">@TwanLuttik</p>
    </div>
    <!-- <router-view/> -->
  </div>
</template>

<script>
import navigationbar from './parts/navigationbar'
export default {
  components: {
    navigationbar
  },
  methods: {
    openLink(v) {
      window.open(v, '_blank')
    }
  }
}
</script>


<style lang="scss">
@import url('https://fonts.googleapis.com/css?family=Lato&display=swap');

#app {
  font-family: 'Lato';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  height: 100%;
  background: black;
  overflow-y: auto;


  display: flex;
  flex-direction: column;
  justify-content: space-between;

  .author {
    display: flex;
    justify-content: center;
    padding-bottom: 10px;
    margin-top: 40px;
    
    p {
      color: white;
    }
    .link {
      cursor: pointer;
      &:hover {
        opacity: 50;
      }
    }
  }
}

.mainIMG {
  width: 50%;
  border-radius: 20px;
  opacity: 20;
  cursor: pointer;


  transition: transform .2s ease-in-out, opacity .2s ease-in-out;
  &:hover {
    transform: scale(1.02);
    opacity: 100;
  }
}

* {
  padding: 0;
  margin: 0;
}

html,
body {
  height: 100;
}


</style>
