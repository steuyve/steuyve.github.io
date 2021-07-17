% Differential and Riemannian Geometry Notes
% Stephen Liu
% June 2021

# Introduction

These are just some notes as I try to get up to speed on differential and Riemannian geometry. My main reference is Manfredo do Carmo's *Riemannian Geometry*.

# Pre-Requisites

This section contains pre-requisite information for the rest of these notes. Statements here are presented without proof, but Manfredo do Carmo's *Differential Geometry of Curves and Surfaces* is a good resource.

<div class="def">
**Multi-variable Chain Rule**: Let $z$ be a function of $x_1,\dots,x_n$ and each $x_i$ be a function of $t_1,\dots,t_m$. Then the partial derivative of $z$ with respect to the variable $t_i$ is given by:
$$\begin{equation} \frac{\partial z}{\partial t_i} = \sum\limits_{j=1}^{n} \frac{\partial z}{\partial x_j} \frac{\partial x_j}{\partial t_i}. \end{equation}$$
</div>

<div class="def">
**Differentials between mappings in $\mathbb{R}^n$**: Let $F:U\subset\mathbb{R}^n \to\mathbb{R}^m$ be a differentiable map. To each $p\in U$ we associate a linear map $dF_p:\mathbb{R}^n\to\mathbb{R}^m$ which is called the *differential* of $F$ at $p$ and is defined as follows: let $w\in\mathbb{R}^n$ and let $\alpha:(-\epsilon,\epsilon)\to U$ be a differentiable curve such that $\alpha(0) = p, \alpha'(0) = w$. By the chain rule, the curve $\beta = F\circ\alpha:(-\epsilon,\epsilon)\to\mathbb{R}^m$ is also differentiable. Then $dF_p(w) = \beta'(0)$.
</div>

<div class="def">
**The Jacobian and Jacobian Determinant**: The matrix of $dF_p:\mathbb{R}^n\to\mathbb{R}^m$ in the canonical bases of $\mathbb{R}^n$ and $\mathbb{R}^m$, that is, the matrix $(\partial f_i / \partial x_j), i = 1,\dots,m, j = 1,\dots, n$, is called the *Jacobian matrix* of $F$ at $p$. When $n = m$, this is a square matrix and its determinant is called the *Jacobian determinant* denoted by:

$$ \begin{equation*} \text{det}\left(\frac{\partial f_i}{\partial x_j}\right) = \frac{\partial(f_1,\dots,f_n)}{\partial(x_1,\dots,x_n)}. \end{equation*}$$
</div>

<div class="def">
**Inverse Function Theorem**: Let $F: U\subset\mathbb{R}^n \to \mathbb{R}^n$ be a differentiable mapping and suppose that at $p\in U$ the differential $dF_p:\mathbb{R}^n \to \mathbb{R}^n$ is an isomorphism. Then there exists a neighborhood $V$ of $p$ in $U$ and a neighborhood $W$ of $F(p)$ in $\mathbb{R}^n$ such that $F:V\to W$ has a differentiable inverse $F^{-1}:W\to V$.
</div>

<div class="def">
**Definition of a Regular Surface in $\mathbb{R}^3$**: A subset $S\subset\mathbb{R}^3$ is a *regular surface* if for all $p \in S$ there exists a neighborhood $V$ of $p$ in $\mathbb{R}^3$ and a mapping $\mathbf{x}:U\subset\mathbb{R}^2\to V\cap S$ of an open set $U\subset \mathbb{R}^2$ onto $V\cap S$ such that

1. $\mathbf{x}$ is a differentiable homeomorphism,
2. The differential $dx_q:\mathbb{R}^2\to\mathbb{R}^3$ is injective for all $q \in U$.
</div>

The map $\mathbf{x}$ is called a *parametrization* of $S$ at $p$. Transition from one parametrization to another is a diffeomorphism, that is, if $\mathbf{x}_{\alpha}\left(U_{\alpha}\right)\cap\mathbf{x}_{\beta}\left(U_{\beta}\right) = W \neq \emptyset$, then the transition maps $\mathbf{x}_{\beta}^{-1}\circ\mathbf{x}_{\alpha}:\mathbf{x}_{\alpha}^{-1}(W)\to\mathbb{R}^2$ and $\mathbf{x}_{\alpha}^{-1}\circ\mathbf{x}_{\beta}:\mathbf{x}_{\beta}^{-1}(W)\to\mathbb{R}^2$ are differentiable.

So a regular surface intuitively is a union of open sets of $\mathbb{R}^2$ living in $\mathbb{R}^3$ such that when two such open sets interact with each other, the change from one to another can be made in a differentiable way.

# Differential Manifolds

We begin with some basic definitions.

<div class="def">
**Differential Manifold of Dimension $n$**: A *differential manifold of dimension $n$* is a set $M$ (sometimes written as $M^n$ to denote the dimension) and a family of injective mappings $\mathbf{x}_{\alpha}:U_{\alpha}\subset\mathbb{R}^n \to M$ of open sets $U_{\alpha}$ of $\mathbb{R}^n$ into $M$ such that 

1. $\bigcup_{\alpha} \mathbf{x}_{\alpha}\left(U_{\alpha}\right) = M$,
2. for any pair $\alpha,\beta$ with $\mathbf{x}_{\alpha}\left(U_{\alpha}\right)\cap \mathbf{x}_{\beta}\left(U_{\beta}\right) = W \neq \emptyset$, the sets $\mathbf{x}_{\alpha}^{-1}\left(W\right)$ and $\mathbf{x}_{\beta}^{-1}\left(W\right)$ are open sets in $\mathbb{R}^n$ and the mappings $\mathbf{x}_{\beta}^{-1} \circ x_{\alpha}$ are differentiable, 
3. the family $\left\{\left(U_{\alpha}, \mathbf{x}_{\alpha}\right)\right\}$ is maximal relative to the first two conditions.

The pair $\left(U_{\alpha},\mathbf{x}_{\alpha}\right)$ is called a *parametrizations* or *system of coordinates* of $M$ at $p$. The sets $\mathbf{x}_{\alpha}\left(U_{\alpha}\right)$ are called a *coordinate neighborhood* at $p$. We should think of this as giving coordinates for $M$ in the neighborhood of $p$ (more on this later). A family $\left\{\left(U_{\alpha},\mathbf{x}_{\alpha}\right)\right\}$ satisfying conditions (1) and (2) above is called a *differentiable structure* on $M$.
</div>

Condition (1) says that the images of the parametrizations cover $M$, and condition (2) is exactly the condition that transition from one parametrization to another is a diffeomorphism (notice how this baked into the definition now rather than a consequence as in the definition of a regular surface in $\mathbb{R}^3$).

For the sake of condition (3), we should also check that given a differentiable structure on $M$, we can complete it to a maximal one: take the union of all parametrizations that satisfy condition (2) with any of the parametrizations of the given structure. This resulting differentiable structure clearly satisfies conditions (1) and (2) and is maximal because any other differentiable structure will be contained in this one.

A differentiable structure on $M$ also induces a natural topology on $M$ by the following: the set $A\subset M$ is defined to be open iff $\mathbf{x}_\alpha^{-1}\left(A\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right)$ is open in $\mathbb{R}^n$ for all $\alpha$. We should check that this actually gives us a topology:

<div class="proof"> Proof:
We first show that the trivial sets $M$ and $\emptyset$ are open in this proposed topology. Firstly, we have that $$\begin{equation*} \mathbf{x}_{\alpha}^{-1}\left(M\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right) = \mathbf{x}_{\alpha}^{-1}\left(\mathbf{x}_\alpha\left(U_\alpha\right)\right) = U_\alpha \end{equation*}$$ which is open. We also have that $$\begin{equation*} \mathbf{x}_{\alpha}^{-1}\left(\emptyset\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right) = \mathbf{x}_{\alpha}^{-1}\left(\emptyset\right) = \emptyset \end{equation*}$$ which is also open. So $M$ and $\emptyset$ are both open. We now check that this collection of sets is closed under finite intersections. Let $A$ and $B$ be open. Then we have $$\begin{align*} \mathbf{x}_{\alpha}^{-1}\left(A\cap B\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right) &= \mathbf{x}_\alpha^{-1}\left(\left(A\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right)\cap\left(B\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right)\right) \\ &= \mathbf{x}_\alpha^{-1}\left(A \cap \mathbf{x}_\alpha\left(U_\alpha\right)\right) \cap \mathbf{x}_\alpha^{-1}\left(B\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right), \end{align*}$$ which is a intersection of two open sets and hence is open. Here we used the fact that inverse images of an intersection of two sets is the intersection of the inverse images of each set. Finally we check closure under arbitrary unions. Let $A_i$ be open for each $i\in I$. Then we have $$\begin{align*} \mathbf{x}_\alpha^{-1}\left(\left(\bigcup\limits_{i\in I} A_i\right)\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right) &= \mathbf{x}_\alpha^{-1}\left(\bigcup\limits_{i\in I}\left(A_i\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right)\right) \\ &= \bigcup\limits_{i\in I}\mathbf{x}_\alpha^{-1}\left(A_i\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right)\end{align*}$$ which is an arbitrary union of open sets and hence open. In the last step above we also used the fact that inverse image commutes with arbitrary unions. So this is indeed a topology. $\square$
</div>

# References

Manfredo do Carmo. *Differential Geometry of Curves and Surfaces: Revised & Updated Second Edition*, Dover Publications, Inc, 2016.
Manfredo do Carmo (translated by Francis Flaherty). *Riemannian Geometry*, Birkhauser Boston 1992.
