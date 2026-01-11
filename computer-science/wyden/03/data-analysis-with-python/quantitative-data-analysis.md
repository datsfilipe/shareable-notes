---
title: 'Quantitative Data Analysis With Python'
---

## Introduction

- column graph: value x quantitative / qualitative
- how variables are classified:
  - quantitative
    - discrete
      - which we can count
      - (e.g. number of children, number of voters, etc)
    - continues
      - which we can't count
      - (e.g. height, temperature, etc)
  - qualitative
    - nominal
      - no order indication
      - (e.g. sexuality, civil state, etc)
    - ordinal
      - has order indication
      - (e.g. age group, QI, etc)

## Basic Concepts

- Population:

> Set of individuals or objects with at least one characteristic in common.

- Sample:

> Part of population.

- Raw Data:

> Data set that has no evident order.

- Rol:

> Data set that has ordering, being it ascending or descending.

- Total Amplitude

> Difference between the biggest and lowest values presented in the data set.

## Graphics

- Bars / columns: most utilized; can be used to represent any quantitative data.
- Histogram: typical for frequency distribution; difference from bars graph is that the columns in this one have no space in between.
- Lines: most appropriate to work with series of time.
- Sector: most appropriate to work with percentages; it's known in Brazil as Pizza graph. :D
- Boxplot: brings information about the data set; it's possible to verify the middle trend, the variability and the simetry of the data distribution; another advantage of this graph is that we can observe the presence of atypical values (outliers).

## Middle Trend

### For non-grouped data:

$$
\overline{X} = \frac{\displaystyle\sum_{i=1}^n X_{i}}{n}
$$

- e.g. for `1, 2, 3, 4, 5`:

$$
\overline{X} = \frac{1 + 2 + 3 + 4 + 5}{5} = 3
$$

### For grouped data:

$$
\overline{X} = \frac{\displaystyle\sum_{i=1}^n X_{i}F_{i}}{n}
$$

> - $X_{i}$ is the middle point of `i` class.
> - $F_{i}$ is the absolute frequency of `i` class.
> - $n$ is the size of the data set or sample.

- e.g.

| Class            | $F_{i}$ | $X_{i}$ | $X_{i}F_{i}$ |
| ---------------- | ------- | ------- | ------------ |
| 2,0 $\vdash$ 2,5 | 2       | 2,25    | 4,5          |
| 2,5 $\vdash$ 3,0 | 4       | 2,75    | 11           |
| 3,0 $\vdash$ 3,5 | 7       | 3,25    | 22,75        |
| 3,5 $\vdash$ 4,0 | 5       | 3,75    | 18,75        |
| 4,0 $\vdash$ 4,5 | 5       | 4,25    | 21,25        |
| 4,5 $\vdash$ 5,0 | 7       | 4,75    | 33,25        |
| Sum              | 30      | -       | 111,5        |

$$
\overline{X} = \frac{\displaystyle\sum_{i=1}^n X_{i}F_{i}}{n} = \frac{111,5}{30} = 3,72
$$

## Median ($M_{D}$)

### For non-grouped data

- odd

$$
E_{M_{D}} = \frac{n + 1}{2}
$$

- even

$$
\begin{drcases}
E_{M_{d_{1}}} = \frac{n}{2} \rightarrow M_{d_{1}} \\
E_{M_{d_{2}}} = \frac{n}{2} + 1 \rightarrow M_{d_{2}}
\end{drcases} M_{d} = \frac{M_{d_{1}} + M_{d_{2}}}{2}
$$

> This process is like finding an index in an array, and then the result ($M_{d_{1}}$ and $M_{d_{2}}$) are the indexed value deferred.

### For grouped data

> 3 steps

- Find the median element:

$$
E_{M_{d}} = \frac{n}{2}
$$

- Find median class; $C_{M_{d}}$ is the class that contains the $E_{M_{d}}$ (it does not stand for commandline in this context).
- Apply the formula:

$$
M_{d} = L_{M_{d}} + \Bigl( \frac{E_{M_{d}} - F_{aac}}{F_{M_{d}}} \Bigr) \space \ast\space h
$$

> - $L_{M_{d}} =$ inferior limit of median class.
> - $F_{aac} =$ accumulated frequency before median class.
> - $F_{M_{d}} =$ absolute frequency of median class.
> - $h =$ amplitude of median class (difference between amplitudes of superior and inferior classes).

## Moda ($M_{O}$)

> - `1, 2, 2, 3, 5` $\rightarrow M_{o} = 2$
> - `1, 3, 6, 7` $\rightarrow$ `amodal`, cause there's no repetition.
> - `1, 2, 3, 3, 4, 5, 5` $\rightarrow M_{o} = 3e5$ (`bimodal`).

### For non-grouped data

- Find modal class $C_{M}$.
- Apply `Czuber` formula:

$$
M_{o} = L_{I_{M_{o}}} + \Bigl( \frac{\varDelta_{1}}{\varDelta_{1} + \varDelta_{2}} \Bigr) \ast h
$$

> - $L_{I_{M_{o}}} =$ inferior limit of modal class.
> - $\varDelta_{1} =$ absolute frequency of modal class minus absolute frequency of class immediately before.
> - $\varDelta_{2} =$ absolute frequency of modal class minus absolute frequency of class immediately after.

## Separatrices

Their function is to divide the data set into a certain number of equal parts.

### Quartile

The data set is divided in four equal parts.

### Decile

The data set is divided in ten equal parts.

### Percentile

The data set is divided in one hundred equal parts.
