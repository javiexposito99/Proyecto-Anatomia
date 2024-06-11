<template>
  <div class="container-all-muestras" style="margin-top: 120px;">
    <div class="muestras-h2">
      <h2>Nuevo Informe</h2>
    </div>

    <div class="container-form-muestras">
      <form class="form-muestras" @submit.prevent="submitForm">
        <div class="container-textarea-muestras">
          <div>
            <label for="quality">Calidad de la muestra</label>
            <select class="input-muestras" v-model="quality" name="quality" required>
              <option name="quality" value="" selected>Código</option>
              <option name="quality" value="11.33">11.33</option>
              <option name="quality" value="4.3">4.3</option>
              <option name="quality" value="667.3">667.3</option>
            </select>
          </div>

          <div>
            <label for="descQuality">Descripción calidad</label>
            <textarea class="input-muestras" name="descQuality" v-model="descQuality" rows="15" id=""
              placeholder="Introduce una descripción sobre calidad..."></textarea>
          </div>
        </div>

        <div class="container-textarea-muestras">
          <div>
            <label for="interpretation">Interpretación de la muestra</label>
            <select class="input-muestras" v-model="interpretation" required>
              <option name="interpretation" value="" selected>Código</option>
              <option name="interpretation" value="codigo1">codigo1</option>
              <option name="interpretation" value="cod2">cod2</option>
              <option name="interpretation" value="code3">code3</option>
            </select>
          </div>

          <div>
            <label for="desc">Descripción interpretación</label>
            <textarea class="input-muestras" name="desc" v-model="desc" rows="15"
              placeholder="Introduce una descripción sobre interpretación..."></textarea>
          </div>
        </div>

        <button class="btn-muestras" type="submit">Siguiente</button>
        <button type="button" class="btn-muestras" @click="other">Agregar otra interpretación</button>
      </form>
    </div>


  </div>
</template>

<script>
export default {
  props: ['code', 'nature', 'dateColected', 'conservation', 'biopsy', 'sede', 'imgUrls'],
  data() {
    return {
      quality: '',
      descQuality: '',
      interpretation: '',
      desc: '',
      interpretations: [] 
    };
  },
  methods: {
    submitForm() {
      this.interpretations.push({
        interpretation: this.interpretation,
        desc: this.desc
      });

      this.$router.push({
        name: 'ViewRevisar',
        params: {
          code: this.code,
          nature: this.nature,
          dateColected: this.dateColected,
          conservation: this.conservation,
          biopsy: this.biopsy,
          sede: this.sede,
          quality: this.quality,
          descQuality: this.descQuality,
          interpretations: JSON.stringify(this.interpretations), 
          imgUrls: this.imgUrls
        }
      });
    },
    other() {
      this.interpretations.push({
        interpretation: this.interpretation,
        desc: this.desc
      });

      this.desc = '';
    },
  },
  name: 'ViewMuestras2'
};
</script>




<style src="../assets/css/muestras.css"></style>
