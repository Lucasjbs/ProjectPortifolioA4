<script setup>
import { ref } from 'vue';

const showHeader = ref(true);

function toggleHeader() {
    showHeader.value = !showHeader.value;
}
</script>

<script>
import usFlag from '../../../assets/us_flag.svg';
import brFlag from '../../../assets/br_flag.svg';
import '../../../css/navbar.css';
import axios from 'axios';

export default {
    data() {
        const currentLanguage = document.documentElement.lang;
        let toggleFlag = true;
        if (currentLanguage === 'en') toggleFlag = true;
        if (currentLanguage === 'pt') toggleFlag = false;

        return {
            currentLanguage: currentLanguage,
            toggleFlag: toggleFlag,
            englishLang: usFlag,
            portugueseLang: brFlag
        };
    },
    methods: {
        async changeLanguage() {
            let locale = 'en';
            if (this.currentLanguage === 'en') locale = 'pt';
            if (this.currentLanguage === 'pt') locale = 'en';

            try {
                const response = await axios.post('/set-locale', { locale });
                console.log(response.data.message);

                window.location.reload();
            } catch (error) {
                console.error('Error changing language:', error);
            }
        }
    }
};
</script>

<template>
    <header>
        <div class="header_top">
            <div class="header_top_left">
                <img :src="toggleFlag ? englishLang : portugueseLang" @click="changeLanguage" alt="Icon" />
            </div>
            <div class="header_top_right">
                <div class="hide_button" @click="toggleHeader">
                    {{ showHeader ? $t('Hide') : $t('Show') }}
                </div>
            </div>
        </div>

        <div v-if="showHeader" class="header_main">
            <div class="header_main_left">
                <img src="../../../assets/ljb_logo.png" />
            </div>
            <div class="header_main_middle">
                <a href="/"> {{ $t('Homepage') }}</a>
                <a href="/portfolio">{{ $t('Portfolio') }}</a>
                <a href="/certifications">{{ $t('Certifications') }}</a>
                <a href="/articles">{{ $t('Articles') }}</a>
                <a href="/projects">{{ $t('Projects') }}</a>
            </div>

            <div class="header_main_right">
                <a v-if="!$page.props.auth.user" href="/login">{{ $t('Login') }}</a>
                <a v-else href="/dashboard">Dashboard</a>
                <a v-if="!$page.props.auth.user" href="/register">{{ $t('Register') }}</a>
            </div>
        </div>
    </header>
</template>