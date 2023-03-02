// Styles
import '@fortawesome/fontawesome-free/css/all.css'
import 'material-design-icons-iconfont/dist/material-design-icons.css'
import '@mdi/font/css/materialdesignicons.css'
import {aliases, fa} from 'vuetify/iconsets/fa'
import 'vuetify/styles'

// Vuetify
import {createVuetify} from 'vuetify'

export default createVuetify(
    // https://vuetifyjs.com/en/introduction/why-vuetify/#feature-guides
    {
        icons: {
            defaultSet: 'fa',
            aliases,
            sets: {
                fa,
            },
        },
    }
)
