import './bootstrap';
import '../css/app.css';

import { createApp, h } from 'vue';
import { createInertiaApp } from '@inertiajs/vue3';
import { resolvePageComponent } from 'laravel-vite-plugin/inertia-helpers';
import { ZiggyVue } from '../../vendor/tightenco/ziggy';
import { i18nVue } from 'laravel-vue-i18n';

const appName = import.meta.env.VITE_APP_NAME || 'Laravel';

createInertiaApp({
    title: (title) => `${title} - ${appName}`,
    resolve: (name) => resolvePageComponent(`./Pages/${name}.vue`, import.meta.glob('./Pages/**/*.vue')),
    setup({ el, App, props, plugin }) {
        return createApp({ render: () => h(App, props) })
            .use(plugin)
            .use(ZiggyVue)
            .use(i18nVue, {
                resolve: async lang => {
                    const langs = import.meta.glob('../../lang/**/*.json');

                    const langFiles = Object.keys(langs).filter(file => file.includes(`../../lang/${lang}`));

                    const messages = { default: {} };
                    for (const file of langFiles) {
                        const module = await langs[file]();
                        const content = module.default ? module.default : module;
                        Object.assign(messages.default, content);
                    }

                    return messages;
                }
            })
            .mount(el);
    },
    progress: {
        color: '#4B5563',
    },
});
