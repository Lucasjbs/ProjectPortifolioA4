<script>
export default {
    props: {
        color: {
            type: String,
            required: true,
        },
    }
};
</script>

<template>
    <div v-if="color === 'green'">
        <svg width="20px" height="20px" viewBox="63.449 38.402 39.589 40.168" xmlns="http://www.w3.org/2000/svg">
            <defs>
                <linearGradient gradientUnits="userSpaceOnUse" x1="164.755" y1="101.3" x2="164.755" y2="137.232"
                    id="gradient-0" gradientTransform="matrix(1, 0, 0, 1, -81.804276, -61.162102)">
                    <stop offset="0" style="stop-color: rgb(21.961% 100% 0%)" />
                    <stop offset="1" style="stop-color: rgb(0% 58.107% 0%)" />
                </linearGradient>
            </defs>
            <ellipse style="fill: url('#gradient-0'); stroke: rgba(0, 0, 0, 0);" cx="82.95" cy="58.104" rx="19.113"
                ry="17.966" transform="matrix(1, 0, 0, 1, -1.7763568394002505e-15, 0)" />
        </svg>
    </div>
    <div v-else-if="color === 'orange'">
        <svg width="20px" height="20px" viewBox="63.449 38.402 39.589 40.168" xmlns="http://www.w3.org/2000/svg">
            <defs>
                <linearGradient gradientUnits="userSpaceOnUse" x1="82.95" y1="40.138" x2="82.95" y2="76.07"
                    id="gradient-1">
                    <stop offset="0" style="stop-color: rgb(100% 53.725% 0%)" />
                    <stop offset="1" style="stop-color: rgb(65.283% 25.946% 0%)" />
                </linearGradient>
            </defs>
            <ellipse style="stroke: rgba(0, 0, 0, 0); fill: url('#gradient-1');" cx="82.95" cy="58.104" rx="19.113"
                ry="17.966" transform="matrix(1, 0, 0, 1, -1.7763568394002505e-15, 0)" />
        </svg>
    </div>
    <div v-else-if="color === 'purple'">
        <svg width="20px" height="20px" viewBox="63.449 38.402 39.589 40.168" xmlns="http://www.w3.org/2000/svg">
            <defs>
                <linearGradient gradientUnits="userSpaceOnUse" x1="82.95" y1="40.138" x2="82.95" y2="76.07"
                    id="gradient-2">
                    <stop offset="0" style="stop-color: rgb(99.608% 0% 100%)" />
                    <stop offset="1" style="stop-color: rgb(64.758% 0% 65.925%)" />
                </linearGradient>
            </defs>
            <ellipse style="stroke: rgba(0, 0, 0, 0); fill: url('#gradient-2');" cx="82.95" cy="58.104" rx="19.113"
                ry="17.966" transform="matrix(1, 0, 0, 1, -1.7763568394002505e-15, 0)" />
        </svg>
    </div>
    <div v-else-if="color === 'blue'">
        <svg width="20px" height="20px" viewBox="63.449 38.402 39.589 40.168" xmlns="http://www.w3.org/2000/svg">
            <defs>
                <linearGradient gradientUnits="userSpaceOnUse" x1="82.95" y1="40.138" x2="82.95" y2="76.07"
                    id="gradient-3">
                    <stop offset="0" style="stop-color: rgb(0% 95.686% 100%)" />
                    <stop offset="1" style="stop-color: rgb(0% 55.46% 58.746%)" />
                </linearGradient>
            </defs>
            <ellipse style="stroke: rgba(0, 0, 0, 0); fill: url('#gradient-3');" cx="82.95" cy="58.104" rx="19.113"
                ry="17.966" transform="matrix(1, 0, 0, 1, -1.7763568394002505e-15, 0)" />
        </svg>
    </div>
    <div v-else-if="color === 'darkblue'">
        <svg width="20px" height="20px" viewBox="63.449 38.402 39.589 40.168" xmlns="http://www.w3.org/2000/svg">
            <defs>
                <linearGradient gradientUnits="userSpaceOnUse" x1="82.95" y1="40.138" x2="82.95" y2="76.07"
                    id="gradient-4">
                    <stop offset="0" style="stop-color: rgb(4.3137% 0% 100%)" />
                    <stop offset="1" style="stop-color: rgb(0% 24.772% 42.979%)" />
                </linearGradient>
            </defs>
            <ellipse style="stroke: rgba(0, 0, 0, 0); fill: url('#gradient-4');" cx="82.95" cy="58.104" rx="19.113"
                ry="17.966" transform="matrix(1, 0, 0, 1, -1.7763568394002505e-15, 0)" />
        </svg>
    </div>
</template>