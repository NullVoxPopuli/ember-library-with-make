import { pageTitle } from 'ember-page-title';
import { Greeting, FancyButton } from 'my-library';

<template>
  {{pageTitle "ConsumerApp"}}

  <Greeting />
  <FancyButton>Click me!</FancyButton>
</template>
