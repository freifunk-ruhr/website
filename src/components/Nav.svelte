<script>
	const navigationPoints = [
		{
			url: '/',
			name: 'Home'
		},
		{
			url: '/what',
			name: 'Was ist Freifunk?'
		},
		{
			url: '/how',
			name: 'Wie mache ich mit?'
		},
		{
			url: '/map',
			name: 'Karte'
		},
		{
			url: '/grafana',
			name: 'Statistik'
		}
	];
</script>

<nav class="flex items-center justify-between flex-wrap bg-primary p-6 mb-2">
  <div class="flex items-center flex-shrink-0 text-white mr-6">
    <span class="font-semibold text-xl tracking-tight">Freifunk Ruhr</span>
  </div>
  <div class="block lg:hidden">
    <button class="flex items-center px-3 py-2 border rounded text-teal-200 border-teal-400 hover:text-white hover:border-white">
      <svg class="fill-current h-3 w-3" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><title>Menu</title><path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z"/></svg>
    </button>
  </div>
  <div class="w-full block flex-grow lg:flex lg:items-center lg:w-auto">
    <div class="text-sm lg:flex-grow">
			{#each navigationPoints as navigationPoint}
				<a href="{navigationPoint.url}" class="block mt-4 lg:inline-block lg:mt-0 hover:text-white text-gray-300 mr-4">
					{navigationPoint.name}
				</a>
			{/each}
    </div>
  </div>
</nav>
