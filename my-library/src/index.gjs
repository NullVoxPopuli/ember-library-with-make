import Component from '@glimmer/component';

export const Greeting = <template>
  <h2>Hello from my-library!</h2>
</template>;

export class FancyButton extends Component {
  <template>
    <button ...attributes>
      {{yield}}
    </button>
  </template>
}
