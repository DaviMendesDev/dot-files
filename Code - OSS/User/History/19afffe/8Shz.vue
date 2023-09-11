<template>
    <Head>
        <title>{{ $props.title ?? "Safebox - Simplificando sua Saúde, Minuto a Minuto." }} </title>
    </Head>
    <div class="bg-indigo-800 text-white">
        <div class="flex flex-wrap justify-between mx-80">
            <ul class="flex justify-between w-6/12">    
                <li>
                    <NuxtLink to="/" class="inline-block py-2 text-3xl">Safebox</NuxtLink>
                    <div class="hover:w-full w-0 bg-white h-1"></div>
                </li>
            </ul>
            <ul class="flex justify-between w-6/12">
                <li class="text-center w-full flex flex-col justify-center">
                    <NuxtLink to="/about-us" class="inline-block w-6/12 py-4 header-link">Sobre Nós</NuxtLink>
                </li>
                <li class="text-center w-full flex flex-col justify-center">
                    <NuxtLink to="/start"    class="inline-block w-full py-4 header-link">Começar</NuxtLink>
                </li>
                <li class="text-center w-full flex flex-col justify-center">
                    <NuxtLink to="/start"    class="inline-block w-full py-4 header-link">Como funciona</NuxtLink>
                </li>
            </ul>
        </div>
    </div>
</template>

<script>
export default {
    props: {
        title: String
    }
}
</script>
