<script setup>
defineProps({
    canLogin: {
        type: Boolean,
    },
    canRegister: {
        type: Boolean,
    },
});
</script>

<script>
import usFlag from '../../../assets/us_flag.svg';
import brFlag from '../../../assets/br_flag.svg';

export default {
    data() {
        return {
            isRed: true,
            redIconSrc: usFlag,
            blueIconSrc: brFlag
        };
    },
    methods: {
        toggleColor() {
            this.isRed = !this.isRed;
        }
    }
};
</script>

<template>
    <header>
        <div class="header_top">
            <div class="header_top_left">
                <img :src="isRed ? redIconSrc : blueIconSrc" @click="toggleColor" alt="Icon" />
            </div>
            <div class="header_top_right">
                <div class="hide_button">
                    Hide
                </div>
            </div>
        </div>

        <div class="header_main">
            <div class="header_main_left">
                <img src="../../../assets/ljb_logo.png" />
            </div>
            <div class="header_main_middle">
                <a href="/homepage">Home Page</a>
                <a href="/portfolio">Portfolio</a>
                <a href="/certifications">Certifications</a>
                <a href="/articles">Articles</a>
                <a href="/projects">Projects</a>
            </div>
            <div class="header_main_right">
                <a href="/login">Log In</a>
                <a href="/register">Register</a>
            </div>
        </div>
    </header>
</template>