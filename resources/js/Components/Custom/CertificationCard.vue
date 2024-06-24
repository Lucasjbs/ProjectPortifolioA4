<script setup>
import HyperlinkIcon from '@/Components/Custom/HyperlinkIcon.vue';
import CardIcon from '@/Components/Custom/CardIcon.vue';
</script>

<script>
export default {
    props: {
        cardColor: {
            type: String,
            required: true,
        },
        certificateName: {
            type: String,
            required: true,
        },
        certificateDescription: {
            type: String,
            required: true,
        },
        certificateRef: {
            type: String,
            required: true,
        },
    }
};
</script>

<template>
    <div class="max-w-sm p-6 rounded-lg component_card">
        <a :href="certificateRef" target="_blank" class="inline-flex items-center">
            <CardIcon :color="cardColor" class="card_icon"/>
            <h5 class="text-2xl font-semibold">{{ certificateName }}</h5>
        </a>
        <p class="mb-3">
            {{ certificateDescription }}
        </p>
        <a :href="certificateRef" target="_blank" class="inline-flex items-center text-blue-600 hover:underline">
            Open certification PDF
            <HyperlinkIcon />
        </a>
    </div>
</template>