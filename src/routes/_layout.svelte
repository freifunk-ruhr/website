<script>
	import Nav from '../components/Nav.svelte';
	import Tailwind from '../components/Tailwind.svelte';
	export let segment;
</script>
<Tailwind/>
<Nav {segment}/>

<main>
	<slot></slot>
</main>
