<script>
export default {
    name: 'ProgressBar',
    props: {
        percentage: {
            type: Number,
            required: true,
            validator: value => value >= 0 && value <= 100
        }
    }
};
</script>

<template>
    <div class="w-full bg-gray-200 rounded-full dark:bg-gray-700 progress-bar">
        <div class="bg-yellow-400 text-xs font-medium text-blue-100 text-center p-0.5 leading-none rounded-full" :style="{ width: percentage + '%' }"> {{ percentage }}%</div>
    </div>
</template>