<script setup>
import { Head } from '@inertiajs/vue3';
import Navbar from '@/Components/Custom/Navbar.vue';
import FooterBar from '@/Components/Custom/FooterBar.vue';
import '../../css/homepage.css';

</script>

<template>

    <Head title="Articles" />
    <Navbar />

    <div class="articles_container">
        <h2>Articles List</h2>
        <h3>MySQL Journey...</h3>
        <h3>Same as the 000webhost portfolio</h3>
    </div>

    <FooterBar />
</template>