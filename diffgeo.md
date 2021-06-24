% Differential and Riemannian Geometry Notes
% Stephen Liu
% June 2021

## Introduction

These are just some notes as I try to get up to speed on differential and Riemannian geometry. My main reference is Manfredo do Carmo's *Riemannian Geometry*.

## Differential Manifolds

We begin with some basic definitions.

> **Definition**: A _differential manifold of dimension $n$_ is a set $M$ and a family of injective mappings $x_{\alpha}:U_{\alpha}\subset\mathbb{R}^n \to M$ of open sets $U_{\alpha}$ of $\mathbb{R}^n$ into $M$ such that 
> 
>   1. $\bigcup_{\alpha} x_{\alpha}\left(U_{\alpha}\right) = M$,
>   2. for any pair $\alpha,\beta$ with $x_{\alpha}\left(U_{\alpha}\right)\cap x_{\beta}\left(U_{\beta}\right) = W \neq 0$, the sets $x_{\alpha}^{-1}\left(W\right)$ and $x_{\beta}^{-1}\left(W\right)$ are open sets in $\mathbb{R}^n$ and the mappings $x_{\beta}^{-1} \circ x_{\alpha}$ are differentiable, 
>   3. the family $\left\{\left(U_{\alpha}, x_{\alpha}\right)\right\}$ is maximal relative to the first two conditions.
> 
> The pair $\left(U_{\alpha},x_{\alpha}\right)$ is called a *parametrizations* or *system of coordinates* of $M$ at $p$. The sets $x_{\alpha}\left(U_{\alpha}\right)$ are called a *coordinate neighborhood* at $p$. A family $\left\{\left(U_{\alpha},x_{\alpha}\right)\right\}$ satisfying conditions (1) and (2) above is called a *differential structure* on $M$.

Test.

## References

Manfredo do Carmo (translated by Francis Flaherty). *Riemannian Geometry*, Birkhauser Boston 1992.
