# CSS 2

---

## CSS Flexbox

In flexbox (`display: flex;`) layout system, there is a way to control other element positions. It's a more efficient way to lay out, align, and distribute space among items in a container. Even when their size is unknown and/or dynamic (thus the word "flex").

* `container`: parent element which can control their children/items positions
* `items`: children element/s which being controlled by their parent/container

![](./assets/flex-container.svg)

![](./assets/flex-items.svg)

CSS:

```css
.container {
  display: flex;
  justify-content: center;
  align-items: center;
}

.item {
  color: blue;
}
```

HTML:

```html
<section class="container">
  <div class="item">One</div>
  <div class="item">Two</div>
  <div class="item">Three</div>
</section>
```

Result:

![](./assets/result.png)

### `justify-content`

* `flex-start`: Items align to the left side of the container
* `flex-end`: Items align to the right side of the container
* `center`: Items align at the center of the container
* `space-between`: Items display with equal spacing between them
* `space-around`: Items display with equal spacing around them

### `align-items`

* `flex-start`: Items align to the top of the container
* `flex-end`: Items align to the bottom of the container
* `center`: Items align at the vertical center of the container
* `baseline`: Items display at the baseline of the container
* `stretch`: Items are stretched to fit the container

### `flex-direction`

* `row`: Items are placed the same as the text direction.
* `row-reverse`: Items are placed opposite to the text direction.
* `column`: Items are placed top to bottom.
* `column-reverse`: Items are placed bottom to top.

---

## CSS Library/Framework

Bootstrap, originally created by Twitter, is the most popular UI design framework that consists of best practices and predefined CSS classes.

`buttons`, `images`, `navbar`, `labels`

`container`, `row`, `column`

`@media` query

---

## CSS Animation

There's a simple animation library with just only CSS called [Animate.css](https://daneden.github.io/animate.css).

---

## References

* http://flexboxfroggy.com
* https://css-tricks.com/snippets/css/a-guide-to-flexbox
