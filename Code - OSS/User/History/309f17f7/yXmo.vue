<template>
    <slot />
    <Footer />
</template>

<script>
import { defineComponent } from '@vue/composition-api'

export default {
    name: 'Main',
}
</script>
