<script>
export default {
    name: 'RadialProgressBar',
    props: {
        percentage: {
            type: Number,
            required: true,
            validator: value => value >= 0 && value <= 100
        }
    },
    computed: {
        circumference() {
            return 2 * Math.PI * 40; // 2 * π * r where r = 40
        },
        strokeDashoffset() {
            return this.circumference - (this.circumference * this.percentage) / 100;
        }
    }
};
</script>

<template>
    <div class="relative w-20 h-20">
        <svg class="w-full h-full" viewBox="0 0 100 100">
            <!-- Background circle -->
            <circle class="text-gray-200 stroke-current" stroke-width="10" cx="50" cy="50" r="40" fill="transparent">
            </circle>
            <!-- Progress circle -->
            <circle class="text-yellow-400 progress-ring__circle stroke-current" stroke-width="10"
                stroke-linecap="round" cx="50" cy="50" r="40" fill="transparent" :stroke-dasharray="circumference"
                :stroke-dashoffset="strokeDashoffset"></circle>
            <!-- Center text -->
            <text x="50" y="50" font-family="Verdana" font-size="12" text-anchor="middle" alignment-baseline="middle">
                {{ percentage }}%
            </text>
        </svg>
    </div>
</template>