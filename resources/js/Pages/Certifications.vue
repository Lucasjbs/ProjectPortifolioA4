<script setup>
import { Head } from '@inertiajs/vue3';
import Navbar from '@/Components/Custom/Navbar.vue';
import FooterBar from '@/Components/Custom/FooterBar.vue';
import '../../css/homepage.css';

</script>

<template>

    <Head title="Certifications" />
    <Navbar />

    <div class="certifications_container">
        <h2>Certifications List</h2>
        <h3>Diploma</h3>
        <p>Barchelors degree in Computer Enginnering</p>
        <p>|||visualize pdf button|||</p>
        <p>|||download pdf button|||</p>

        <h3>Alura Certifications</h3>
        <p>Formação Aprenda a programar em PHP</p>
        <p>|||visualize pdf button|||</p>
        <p>|||download pdf button|||</p>

        <h3>MOVA Certifications</h3>
        <p>OWASP, HyperF, etc...</p>
        <p>|||visualize pdf button|||</p>
        <p>|||download pdf button|||</p>

        <h3>DIO Certifications</h3>
        <p>NEXA, Claude 3 AI</p>
        <p>|||visualize pdf button|||</p>
        <p>|||download pdf button|||</p>

        <h3>Alura Individual Courses</h3>
        <p>SOLID Course</p>
        <p>|||visualize pdf button|||</p>
        <p>|||download pdf button|||</p>

        <h3>DIO Individual Courses</h3>
        <p>Java Course</p>
        <p>|||visualize pdf button|||</p>
        <p>|||download pdf button|||</p>

        <h3>Other Certificates</h3>
        <p>College stuff (fome mercado TI etc...)</p>
        <p>|||visualize pdf button|||</p>
        <p>|||download pdf button|||</p>

    </div>

    <FooterBar />
</template>