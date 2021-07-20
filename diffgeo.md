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
**Differentials of mappings in $\mathbb{R}^n$**: Let $F:U\subset\mathbb{R}^n \to\mathbb{R}^m$ be a differentiable map. To each $p\in U$ we associate a linear map $dF_p:\mathbb{R}^n\to\mathbb{R}^m$ which is called the *differential* of $F$ at $p$ and is defined as follows: let $w\in\mathbb{R}^n$ and let $\alpha:(-\epsilon,\epsilon)\to U$ be a differentiable curve such that $\alpha(0) = p, \alpha'(0) = w$. By the chain rule, the curve $\beta = F\circ\alpha:(-\epsilon,\epsilon)\to\mathbb{R}^m$ is also differentiable. Then $dF_p(w) = \beta'(0)$.
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

# Differentiable Manifolds

## Basic Definition

<div class="def">
**Differentiable Manifold of Dimension $n$**: A *differentiable manifold of dimension $n$* is a set $M$ (sometimes written as $M^n$ to denote the dimension) and a family of injective mappings $\mathbf{x}_{\alpha}:U_{\alpha}\subset\mathbb{R}^n \to M$ of open sets $U_{\alpha}$ of $\mathbb{R}^n$ into $M$ such that 

1. $\bigcup_{\alpha} \mathbf{x}_{\alpha}\left(U_{\alpha}\right) = M$,
2. for any pair $\alpha,\beta$ with $\mathbf{x}_{\alpha}\left(U_{\alpha}\right)\cap \mathbf{x}_{\beta}\left(U_{\beta}\right) = W \neq \emptyset$, the sets $\mathbf{x}_{\alpha}^{-1}\left(W\right)$ and $\mathbf{x}_{\beta}^{-1}\left(W\right)$ are open sets in $\mathbb{R}^n$ and the mappings $\mathbf{x}_{\beta}^{-1} \circ \mathbf{x}_{\alpha}$ are differentiable, 
3. the family $\left\{\left(U_{\alpha}, \mathbf{x}_{\alpha}\right)\right\}$ is maximal relative to the first two conditions.

The pair $\left(U_{\alpha},\mathbf{x}_{\alpha}\right)$ is called a *parametrizations* or *system of coordinates* of $M$ at $p$. The sets $\mathbf{x}_{\alpha}\left(U_{\alpha}\right)$ are called a *coordinate neighborhood* at $p$. We should think of this as giving coordinates for $M$ in the neighborhood of $p$ (more on this later). A family $\left\{\left(U_{\alpha},\mathbf{x}_{\alpha}\right)\right\}$ satisfying conditions (1) and (2) above is called a *differentiable structure* on $M$.
</div>

Condition (1) says that the images of the parametrizations cover $M$, and condition (2) is exactly the condition that transition from one parametrization to another is a diffeomorphism (notice how this baked into the definition now rather than a consequence as in the definition of a regular surface in $\mathbb{R}^3$).

For the sake of condition (3), we should also check that given a differentiable structure on $M$, we can complete it to a maximal one: take the union of all parametrizations that satisfy condition (2) with any of the parametrizations of the given structure. This resulting differentiable structure clearly satisfies conditions (1) and (2) and is maximal because any other differentiable structure will be contained in this one.

A differentiable structure on $M$ also induces a natural topology on $M$ by the following: the set $A\subset M$ is defined to be open iff $\mathbf{x}_\alpha^{-1}\left(A\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right)$ is open in $\mathbb{R}^n$ for all $\alpha$. We should check that this actually gives us a topology:

<div class="proof"> Proof:
We first show that the trivial sets $M$ and $\emptyset$ are open in this proposed topology. Firstly, we have that $$\begin{equation*} \mathbf{x}_{\alpha}^{-1}\left(M\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right) = \mathbf{x}_{\alpha}^{-1}\left(\mathbf{x}_\alpha\left(U_\alpha\right)\right) = U_\alpha \end{equation*}$$ which is open. We also have that $$\begin{equation*} \mathbf{x}_{\alpha}^{-1}\left(\emptyset\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right) = \mathbf{x}_{\alpha}^{-1}\left(\emptyset\right) = \emptyset \end{equation*}$$ which is also open. So $M$ and $\emptyset$ are both open. We now check that this collection of sets is closed under finite intersections. Let $A$ and $B$ be open. Then we have $$\begin{align*} \mathbf{x}_{\alpha}^{-1}\left(A\cap B\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right) &= \mathbf{x}_\alpha^{-1}\left(\left(A\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right)\cap\left(B\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right)\right) \\ &= \mathbf{x}_\alpha^{-1}\left(A \cap \mathbf{x}_\alpha\left(U_\alpha\right)\right) \cap \mathbf{x}_\alpha^{-1}\left(B\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right), \end{align*}$$ which is a intersection of two open sets and hence is open. Here we used the fact that inverse images of an intersection of two sets is the intersection of the inverse images of each set. Finally we check closure under arbitrary unions. Let $A_i$ be open for each $i\in I$. Then we have $$\begin{align*} \mathbf{x}_\alpha^{-1}\left(\left(\bigcup\limits_{i\in I} A_i\right)\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right) &= \mathbf{x}_\alpha^{-1}\left(\bigcup\limits_{i\in I}\left(A_i\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right)\right) \\ &= \bigcup\limits_{i\in I}\mathbf{x}_\alpha^{-1}\left(A_i\cap\mathbf{x}_\alpha\left(U_\alpha\right)\right)\end{align*}$$ which is an arbitrary union of open sets and hence open. In the last step above we also used the fact that inverse image commutes with arbitrary unions. So this is indeed a topology.
</div>

## Examples of Differentiable Manifolds

## Differentiable Maps

<div class="def">
**Differentiable Mapping Between Differentiable Manifolds**: Let $M_1^n$ and $M_2^m$ be differentiable manifolds. A mapping $\varphi:M_1\to M_2$ is *differentiable at $p \in M_1$* if given a parametrization $\mathbf{y}:V\subset\mathbb{R}^m\to M_2$ at $\varphi(p)$, there exists a parametrization $\mathbf{x}:U\subset\mathbb{R}^n\to M_1$ at $p$ such that $\varphi(\mathbf{x}(U))\subset\mathbf{y}(V)$ and the mapping $\mathbf{y}^{-1}\circ \varphi\circ\mathbf{x}:U\to\mathbf{R}^m$ is differentiable at $\mathbf{x}^{-1}(p)$.
</div>

The essence of this definition is that a mapping $\varphi$ between manifolds is called differentiable if after expressing it in coordinates using the parametrizations $\mathbf{x}, \mathbf{y}$, the resulting map between Euclidean spaces is differentiable in the Euclidean sense. In fact, the mapping $\mathbf{y}^{-1}\circ\varphi\mathbf{x}$ is called the *expression* of $\varphi$ in the parameterizations $\mathbf{x}$ and $\mathbf{y}$. We should check here that the given definition is indeed independent of the choices of parameterizations:

<div class="proof"> Proof:
Let $\mathbf{\alpha}:A\subset\mathbb{R}^m\to M_2$ and $\mathbf{\beta}: B\subset\mathbb{R}^n\to M_1$ be another choice of parameterizations such that $\varphi(\mathbf{\beta}(B))\subset\mathbf{\alpha}(A)$. Then by condition (2) in the definition of a differentiable manifold, the transition maps $\mathbf{\alpha}^{-1}\circ\mathbf{y}$ and $\mathbf{x}^{-1}\circ\mathbf{\beta}$ are differentiable (assuming their ranges overlap) and so composing on the left and right we have that the map
\begin{equation*}
\mathbf{\alpha}^{-1}\circ\mathbf{y}\circ\mathbf{y}^{-1}\circ\varphi\circ\mathbf{x}\circ\mathbf{x}^{-1}\circ\mathbf{\beta} = \mathbf{\alpha}^{-1}\circ\varphi\circ\mathbf{\beta}
\end{equation*}
is differentiable.
</div>

## The Tangent Bundle

Here we introduce the tangent bundle and provide a differentiable structure for it.

<div class="def">
Let $M$ be a differentiable manifold. Define the set
\begin{equation*}
TM = \left\{(p,v): p\in M, v\in T_pM\right\}
\end{equation*}
For a differential structure, let $\left\{\left(U_\alpha, \mathbf{x}_\alpha\right)\right\}$ be a maximal differentiable structure on $M$. Denote by $(x_1^\alpha, \dots, x_n^\alpha)$ the coordinates in $U_\alpha$ and by $\left\{\frac{\partial}{\partial x_1^\alpha},\dots,\frac{\partial}{\partial x_n^\alpha}\right\}$ the associated bases to the tangent spaces of $\mathbf{x}_\alpha\left(U_\alpha\right)$. Then for every $\alpha$, define the mapping $\mathbf{y}_\alpha:U_\alpha\times\mathbb{R}^n\to TM$ by
\begin{equation*}
\mathbf{y}_\alpha\left(x_1^\alpha,\dots,x_n^\alpha,u_1,\dots,u_n\right) = \left(\mathbf{x}_\alpha\left(x_1^\alpha,\dots,x_n^\alpha\right),\sum\limits_{i=1}^n u_i \frac{\partial}{\partial x_i^\alpha} \right)
\end{equation*}
for $(u_1,\dots,u_n)\in\mathbb{R}^n$. Then $\left\{\left(U_\alpha\times\mathbb{R}^n\right),\mathbf{y}_\alpha\right\}$ is a differentiable structure on $TM$, which we prove below.
</div>

<div class="proof"> Proof:
First we need to show that $\mathbf{y}_\alpha\left(U_\alpha\times\mathbb{R}^n\right)$ covers $TM$. Since $\mathbf{x}_\alpha\left(U_\alpha\right) = M$ and for every $q \in U_\alpha$, the differential $(d\mathbf{x}_\alpha)_q\left(\mathbb{R}^n\right) = T_{\mathbf{x}_\alpha(q)}M$, we have that
\begin{equation*}
\bigcup\mathbf{y}_\alpha\left(U_\alpha\times\mathbb{R}^n\right) = TM.
\end{equation*}
Now it remains to show that the transition maps between two overlapping parameterizations is differentiable. Suppose we have a point of $TM$, $(p,v) \in \mathbf{y}_\alpha\left(U_\alpha\times\mathbb{R}^n\right)\cap\mathbf{y}_\beta\left(U_\beta\times\mathbb{R}^n\right)$, then we can write $(p,v)$ as
\begin{equation*}
(p,v) = \left(\mathbf{x}_\alpha\left(q_\alpha\right),d\mathbf{x}_\alpha\left(v_\alpha\right)\right) = \left(\mathbf{x}_\beta\left(q_\beta\right),d\mathbf{x}_\beta\left(v_\beta\right)\right)
\end{equation*}
for some $q_\alpha\in U_\alpha$, $q_\beta\in U_\beta$, and $v_\alpha,v_\beta \in \mathbb{R}^n$. Then consider the following:
\begin{align*}
\mathbf{y}_\beta^{-1}\circ\mathbf{y}_\alpha\left(q_\alpha,v_\alpha\right) &= \mathbf{y}_\beta^{-1}\left(\mathbf{x}_\alpha\left(q_\alpha\right),d\mathbf{x}_\alpha\left(v_\alpha\right)\right) \\ &= \left(\mathbf{x}_\beta^{-1}\circ\mathbf{x}_\alpha\left(q_\alpha\right), d\left(\mathbf{x}_\beta^{-1}\circ\mathbf{x}_\alpha\right)\left(v_\alpha\right)\right)
\end{align*}
Clearly $\mathbf{x}_\beta^{-1}\circ\mathbf{x}_\alpha$ is differentiable, and since it is, the differential, $d\left(\mathbf{x}_\beta^{-1}\circ\mathbf{x}_\alpha\right)$ is as well. So $\mathbf{y}_\beta^{-1}\circ\mathbf{y}_\alpha$ is differentiable and hence we have a differentiable structure on $TM$.
</div>

# References

Manfredo do Carmo. *Differential Geometry of Curves and Surfaces: Revised & Updated Second Edition*, Dover Publications, Inc, 2016.

Manfredo do Carmo (translated by Francis Flaherty). *Riemannian Geometry*, Birkhauser Boston 1992.
