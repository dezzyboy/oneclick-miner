<template>
  <section id="minerInfo" v-if="earned && settings.apiBase">
    <div class="container">
      <div class="columns is-mobile has-text-centered">
        <div class="column is-4">
          <h2>Unpaid</h2>
          <div><span class="tag is-primary is-normal">{{earned.unpaid || 0}} XMN</span></div>
        </div>
        <div class="column is-4">
          <h2>Paid last 24 hrs</h2>
          <div><span class="tag is-primary is-normal">{{earned.paid24h || 0}} XMN</span></div>
        </div>
        <div class="column is-4">
          <h2>All time</h2>
          <div><span class="tag is-primary is-normal">{{earned.total || 0}} XMN</span></div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import { mapState } from 'vuex';

export default {
  computed: {
    ...mapState({
      settings: state => state.Settings,
      earned: state => state.Pool,
    }),
  },
  methods: {
    fetchPoolData() {
      this.$store.dispatch('fetchPoolData');
    },
  },
  created() {
    setInterval(() => {
      if (this.$store.state.Settings.apiBase) {
        this.fetchPoolData();
      } else {
        this.$store.commit('RESET_POOL_DATA');
      }
    }, 10000);
  },
};
</script>

<style lang="scss" scoped>
  #minerInfo {
    margin-top: 30px;
  }

  h2 {
    font-size: 0.8em;
  }
</style>
