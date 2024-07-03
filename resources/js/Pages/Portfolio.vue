<script setup>
import { Head } from '@inertiajs/vue3';
import Navbar from '@/Components/Custom/Navbar.vue';
import FooterBar from '@/Components/Custom/FooterBar.vue';
import '../../css/portfolio.css';

defineProps({
    renderMode: {
        type: Boolean,
        required: true,
    },
});

</script>

<script>
import pdfCV from '../../assets/portfolio/CV_EN3.pdf';

export default {
  data() {
    return {
      pdfUrl: pdfCV
    };
  },
  mounted() {
    this.cvHandler();
  },
  methods: {
    cvHandler() {
      if (this.renderMode) {
        // additional configs if needed
      }
    },
    downloadPDF() {
      fetch(pdfCV)
        .then(response => response.blob())
        .then(blob => {
          const url = window.URL.createObjectURL(blob);
          const link = document.createElement('a');
          link.href = url;
          link.setAttribute('download', 'CV_EN3.pdf');
          document.body.appendChild(link);
          link.click();
          document.body.removeChild(link);
          window.URL.revokeObjectURL(url);
        })
        .catch(err => console.error('Error fetching the PDF:', err));
    }
  }
};
</script>

<template>

    <Head title="Portfolio" />
    <Navbar v-if="!renderMode"/>

    <div class="portfolio_container" :class="{ 'rm_portfolio_container': renderMode }">
        <div class="right_side" :class="{ 'rm_right_side': renderMode }">

            <div class="main_title">
                <div class="title_image">
                    <img src="../../assets/portfolio/linkedin-profile-pic.png" />
                </div>
                <div class="title_description">
                    <h2>Lucas Junqueira Bastos</h2>
                    <h3 v-if="!renderMode">{{ $t('PortfolioDevTitle') }}</h3>
                    <h3 v-if="!renderMode">{{ $t('PortfolioDevLocation') }}</h3>
                    
                    <h5 v-if="renderMode">{{ $t('PortfolioDevTitle') }}</h5>
                    <h5 v-if="renderMode">{{ $t('PortfolioDevLocation') }}</h5>
                </div>
            </div>

            <div class="summary" :class="{ 'rm_summary': renderMode }">
                <h3>{{ $t('PortfolioSumTitle') }}</h3>

                <p>{{ $t('PortfolioSumParagraphOne') }}</p>
                <p>{{ $t('PortfolioSumParagraphTwo') }}</p>
            </div>

            <div class="experience" :class="{ 'rm_experience': renderMode }">
                <h3>{{ $t('PortfolioExperienceTitle') }}</h3>

                <h4>{{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyOneTitleSpecs[0] : '' }}</h4>
                <h5>{{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyOneTitleSpecs[1] : '' }}</h5>
                <h5>{{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyOneTitleSpecs[2] : '' }}</h5>

                <p>{{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyOneJobDesc[0] : '' }}</p>

                <p>{{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyOneJobDesc[1] : '' }}</p>
                    <p>- {{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyOneJobDesc[2] : '' }}</p>
                    <p>- {{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyOneJobDesc[3] : '' }}</p>
                    <p>- {{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyOneJobDesc[4] : '' }}</p>
                <p>{{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyOneJobDesc[5] : '' }}</p>
                    
                    <p>- {{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyOneJobDesc[6] : '' }}</p>
                    <p>- {{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyOneJobDesc[7] : '' }}</p>
                    <p>- {{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyOneJobDesc[8] : '' }}</p>
                    <p>- {{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyOneJobDesc[9] : '' }}</p>
                    <p>- {{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyOneJobDesc[10] : '' }}</p>
                
                <hr>

                <h4>{{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyTwoTitleSpecs[0] : '' }}</h4>
                <h5>{{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyTwoTitleSpecs[1] : '' }}</h5>
                <h5>{{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyTwoTitleSpecs[2] : '' }}</h5>

                <p>{{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyTwoJobDesc[0] : '' }}</p>
                <p>- {{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyTwoJobDesc[1] : '' }}</p>
                <p>- {{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyTwoJobDesc[2] : '' }}</p>
                <p>- {{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyTwoJobDesc[3] : '' }}</p>
                
                <hr>

                <h4>{{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyThreeTitleSpecs[0] : '' }}</h4>
                <h5>{{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyThreeTitleSpecs[1] : '' }}</h5>
                <h5>{{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyThreeTitleSpecs[2] : '' }}</h5>

                <p>{{ $t('PortfolioExp') !== 'PortfolioExp' ? $t('PortfolioExp').CompanyThreeJobDesc : '' }}</p>
                
            </div>

            <div class="education" :class="{ 'rm_education': renderMode }">
                <h3>{{ $t('PortfolioEducationTitle') }}</h3>
                <h4>Instituto Federal de Educação, Ciência e Tecnologia do Sul de Minas Gerais</h4>
                <p>{{ $t('PortfolioEducationBachelorDesc') }}</p>
                <div class="validation">
                    <p>{{ $t('PortfolioEducationBachelorValidation') }}</p> 
                    <a href="https://suap.ifsuldeminas.edu.br/edu/diploma_digital/6388/1082.1082.12415f4847b3/" target="_blank">https://suap.ifsuldeminas.edu.br/edu/diploma_digital/6388/1082.1082.12415f4847b3/</a>
                </div>
            </div>
        </div>
        <div class="left_side" :class="{ 'rm_left_side': renderMode }">
            <div class="contact">
                <h3>{{ $t('PortfolioContactTitle') }}</h3>
                <p>+55 35 98404-3366</p>
                <p>lucasjbastos26@gmail.com</p>
                <a href="https://www.linkedin.com/in/lucas-junqueira-bastos-85b89b203/" target="_blank">
                    <p>https://www.linkedin.com/in/lucas-junqueira-bastos-85b89b203/</p>
                </a>
                <a href="https://github.com/Lucasjbs" target="_blank">
                    <p>https://github.com/Lucasjbs</p>
                </a>
            </div>

            <div class="skills">
                <h3>{{ $t('PortfolioSkillsDesc') !== 'PortfolioSkillsDesc' ? $t('PortfolioSkillsDesc')[0] : '' }}</h3>
                <ul>
                    <li>{{ $t('PortfolioSkillsDesc') !== 'PortfolioSkillsDesc' ? $t('PortfolioSkillsDesc')[1] : '' }}</li>
                    <li>{{ $t('PortfolioSkillsDesc') !== 'PortfolioSkillsDesc' ? $t('PortfolioSkillsDesc')[2] : '' }}</li>
                    <li>{{ $t('PortfolioSkillsDesc') !== 'PortfolioSkillsDesc' ? $t('PortfolioSkillsDesc')[3] : '' }}</li>
                    <li>{{ $t('PortfolioSkillsDesc') !== 'PortfolioSkillsDesc' ? $t('PortfolioSkillsDesc')[4] : '' }}</li>
                    <li>{{ $t('PortfolioSkillsDesc') !== 'PortfolioSkillsDesc' ? $t('PortfolioSkillsDesc')[5] : '' }}</li>
                    <li>{{ $t('PortfolioSkillsDesc') !== 'PortfolioSkillsDesc' ? $t('PortfolioSkillsDesc')[6] : '' }}</li>
                    <li>{{ $t('PortfolioSkillsDesc') !== 'PortfolioSkillsDesc' ? $t('PortfolioSkillsDesc')[7] : '' }}</li>
                    <li>{{ $t('PortfolioSkillsDesc') !== 'PortfolioSkillsDesc' ? $t('PortfolioSkillsDesc')[8] : '' }}</li>
                </ul>
            </div>

            <div class="language">
                <h3>{{ $t('PortfolioLanguagesDesc') !== 'PortfolioLanguagesDesc' ? $t('PortfolioLanguagesDesc')[0] : '' }}</h3>
                <ul>
                    <li>{{ $t('PortfolioLanguagesDesc') !== 'PortfolioLanguagesDesc' ? $t('PortfolioLanguagesDesc')[1] : '' }}</li>
                    <li>{{ $t('PortfolioLanguagesDesc') !== 'PortfolioLanguagesDesc' ? $t('PortfolioLanguagesDesc')[2] : '' }}</li>
                </ul>
            </div>

            <div class="certifications">
                <h3>{{ $t('PortfolioCertificatesDesc') !== 'PortfolioCertificatesDesc' ? $t('PortfolioCertificatesDesc')[0] : '' }}</h3>
                <ul>
                    <li>{{ $t('PortfolioCertificatesDesc') !== 'PortfolioCertificatesDesc' ? $t('PortfolioCertificatesDesc')[1] : '' }}</li>
                    <li>{{ $t('PortfolioCertificatesDesc') !== 'PortfolioCertificatesDesc' ? $t('PortfolioCertificatesDesc')[2] : '' }}</li>
                    <li>{{ $t('PortfolioCertificatesDesc') !== 'PortfolioCertificatesDesc' ? $t('PortfolioCertificatesDesc')[3] : '' }}</li>
                    <li>{{ $t('PortfolioCertificatesDesc') !== 'PortfolioCertificatesDesc' ? $t('PortfolioCertificatesDesc')[4] : '' }}</li>
                    <li>{{ $t('PortfolioCertificatesDesc') !== 'PortfolioCertificatesDesc' ? $t('PortfolioCertificatesDesc')[5] : '' }}</li>
                    <li>{{ $t('PortfolioCertificatesDesc') !== 'PortfolioCertificatesDesc' ? $t('PortfolioCertificatesDesc')[6] : '' }}</li>
                    <li>{{ $t('PortfolioCertificatesDesc') !== 'PortfolioCertificatesDesc' ? $t('PortfolioCertificatesDesc')[7] : '' }}</li>
                </ul>
            </div>
        </div>
    </div>

    <hr>
    <div class="pdf_buttons" v-if="!renderMode">
        <a :href="pdfUrl" target="_blank">
            <button type="button" class="flex items-center text-white bg-gradient-to-r from-red-800 via-red-600 to-red-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-red-300 dark:focus:ring-red-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
                {{ $t('PortfolioButtonOne') }}
                <img src="../../assets/portfolio/logo-pdf.png" alt="PDF Icon" class="w-5 h-5 mr-2">
            </button>
        </a>

        <button @click="downloadPDF" type="button" class="flex items-center text-white bg-gradient-to-r from-red-800 via-red-600 to-red-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-red-300 dark:focus:ring-red-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
            {{ $t('PortfolioButtonTwo') }}
            <img src="../../assets/portfolio/logo-pdf.png" alt="PDF Icon" class="w-5 h-5 mr-2">
        </button>
    </div>

    <FooterBar v-if="!renderMode"/>
</template>



<style>
.rm_portfolio_container h2{
    font-size: 28px;
}

.rm_portfolio_container h5{
    font-size: 16px;
    font-weight: bold;
}

.rm_portfolio_container p{
    font-size: 16px;
}

.rm_right_side {
    width: 60%;
    padding-right: 8px;
}

.rm_right_side h3{
    font-size: 22px;
}

.rm_summary{
    padding-top: 4px;
}

.rm_experience{
    padding-top: 4px;
}

.rm_experience h4{
    font-size: 20px;
}

.rm_education{
    padding-top: 4px;
}

.rm_left_side p{
    font-size: 14px;
}

</style>