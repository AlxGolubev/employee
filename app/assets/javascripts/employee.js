$(document).on('ready', function () {
  new Vue.component('paginator', {
    
  });

  new Vue({
    el: '#app',
    data: {
      employees: [],
      tableColumns: ['First Name', 'Last Name', 'Department', 'Level']
    },
    mounted: function () {
      this.fetchEmployee();
    },
    methods: {
      fetchEmployee: function () {
        this.$http.get(this.$refs['employees-table'].dataset.url)
          .then(function (response) {
            this.employees = response.body
          }).bind(this)
      }
    }
  })
});
