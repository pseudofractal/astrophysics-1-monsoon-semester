#import "lib.typ": report

#show: report.with(
  title: [Dark Energy and Cosmic Expansion],
  author: "Kshitish Kumar Ratha",
  date: datetime(year: 2025, day: 5, month: 11),
  abstract: [
    The discovery that the universe is undergoing accelerated expansion has reshaped modern cosmology.
    Observations of distant Type Ia supernovae, corroborated by measurements of the cosmic microwave
    background and large-scale structure, imply that nearly seventy percent of the cosmic energy density
    exists in an unknown form, that we have taken to call dark energy. This term paper reviews the historical
    development of the idea, the standard cosmological framework leading to the acceleration condition, 
    the observational probes confirming it, and the theoretical attempts to explain the phenomenon within
    and beyond general relativity.
  ],
  bibliography: bibliography("bibliography.yml", full: true, style: "spie"),
  chapter-pagebreak: false,
)

= Historical Context <historical-context>
The concept of an accelerating universe is deeply rooted in the evolving understanding of cosmology over the past century. The idea traces back to the early twentieth century, when Albert Einstein formulated the general theory of relativity in 1915. Initially, Einstein sought a static solution to his field equations, consistent with the prevailing philosophical and observational belief that the universe was unchanging on large scales. To achieve this, he introduced the cosmological constant, denoted by the Greek letter $Lambda$, as an additional term in the Einstein field equations @weinberg. The modified form of the equations can be expressed as
$ G_(mu nu) + Lambda g_(mu nu) = frac(8 pi G, c^4) T_(mu nu) \, $
where $G_(mu nu)$ is the Einstein tensor describing spacetime curvature, $T_(mu nu)$ is the stress-energy tensor of matter and radiation, and $Lambda$ represents a uniform energy density inherent to empty space. In this formulation, $Lambda$ acted as a repulsive force that counterbalanced the attractive influence of gravity, yielding a static universe.

This notion of a static cosmos persisted until the 1920s, when observational evidence overturned it. In 1929, Edwin Hubble demonstrated that distant galaxies exhibit a systematic redshift proportional to their distance, implying that the universe is expanding @weinberg. This empirical relation, now known as Hubble's law, fundamentally changed the cosmological paradigm. For much of the twentieth century, cosmologists assumed that the expansion of the universe should be decelerating under the influence of gravitational attraction. Competing models; the open, closed, and flat universes were distinguished by their eventual fate, depending on the total matter-energy density. The possibility that the expansion could be accelerating was largely dismissed as theoretically contrived and observationally unsupported.

This view changed dramatically in the late 1990s. Two independent collaborations the Supernova Cosmology Project, led by Saul Perlmutter, and the High-Z Supernova Search Team, led by Brian Schmidt and Adam Riess undertook systematic studies of Type Ia supernovae as standardizable candles. By comparing observed luminosity distances with redshifts, they discovered that distant supernovae were dimmer than expected in a decelerating universe. Their data indicated that the expansion of the universe is not slowing down but accelerating @riess-supernovae@perlmutter-supernovae.

= Cosmological Framework <cosmological-framework>
The discovery of cosmic acceleration is best understood within the mathematical structure of modern cosmology, founded on general relativity and the cosmological principle. The later asserts that, on sufficiently large scales, the universe is both homogeneous and isotropic, allowing the use of a single scale factor to describe its dynamics. These symmetries lead to the Friedmann-Lemaître-Robertson-Walker (FLRW) metric,
$ d s^2 = - c^2 d t^2 + a^2 ( t ) [frac(d r^2, 1 - k r^2) + r^2 ( d theta^2 + sin^2 theta thin d phi.alt^2 )] $
where $a ( t )$ represents the scale factor and $k$ is the spatial curvature constant ($k = 0 , +1 , -1$ for flat, closed, and open universes respectively).

Starting from Einstein's field equations:
$ G_(mu nu) + Lambda g_(mu nu) = frac(8 pi G, c^4) T_(mu nu) $
and assuming a perfect fluid stress-energy tensor
$ T_(mu nu) = ( rho + p / c^2 ) u_mu u_nu + p g_(mu nu) $
the FLRW metric yields the two Friedmann equations:
$ H^2 = (dot(a) / a)^2 &= frac(8 pi G, 3) rho - frac(k c^2, a^2) + frac(Lambda c^2, 3) \
dot.double(a) / a & = - frac(4 pi G, 3) (rho + frac(3 p, c^2)) + frac(Lambda c^2, 3) $<friedmann-equation>
@friedmann-equation indicates that the acceleration of the universe depends on the competition between the attractive effect of matter and the repulsive contribution of the cosmological constant. For acceleration ($dot.double(a) > 0$) to occur, the effective pressure must satisfy
$ p < - frac(rho c^2, 3) $

The relation between pressure and energy density is often parameterized by the equation-of-state parameter
$ w = frac(p, rho c^2) $
For nonrelativistic matter $w = 0$, for radiation $w = 1 \/ 3$, and for a cosmological constant $w = - 1$. The condition $w < - 1 \/ 3$ thus defines the requirement for an accelerating universe. This formalism generalizes Einstein's cosmological constant to a broader class of dark energy models with similar dynamical effects.

The total energy density of the universe is expressed through dimensionless density parameters:
$ Omega_i = rho_i / rho_(upright("crit")) \, quad rho_(upright("crit")) = frac(3 H_0^2, 8 pi G) \, $
where $rho_(upright("crit"))$ is the critical density for a spatially flat universe and $H_0$ is the current Hubble constant. Observations from the #emph[Planck] mission constrain $Omega_m approx 0.315$, $Omega_Lambda approx 0.685$, and $Omega_k approx 0$, implying a nearly flat geometry dominated by dark energy @planck-2018-results.

A convenient way to quantify acceleration is via the #emph[deceleration parameter]:
$ q = - frac(dot.double(a) thin a, dot(a)^2) $
Substituting @friedmann-equation gives, for a flat universe with a single component of equation-of-state parameter $w$,
$ q = ( 1 + 3 w )/2 $
The universe accelerates when $q < 0$, i.e.$w < - 1 \/ 3$. Using current cosmological parameters, one finds $q_0 approx - 0.55$, consistent with observational data from Type~Ia supernovae and the CMB. The sign change of $q$ around redshift $z approx 0.7$ marks the transition from matter-dominated deceleration to dark-energy-dominated acceleration.

The energy-momentum conservation law $nabla_mu T^(mu nu) = 0$ leads to the continuity equation:
$ dot(rho) + 3 H (rho + p / c^2) = 0 $
which fully determines the evolution of each component once its equation of state is specified. During the matter-dominated era ($w = 0$), $a \( t \) prop t^(2 \/ 3)$\; in a cosmological-constant-dominated era ($w = - 1$), $a \( t \) prop e^(H t)$. The observed expansion history, inferred from multiple datasets, follows this theoretical structure with remarkable precision.

The Friedmann framework thus provides a self-consistent mathematical basis for cosmology. It links geometry, dynamics, and energy content through general relativity, explaining the universe's expansion and identifying the condition for acceleration. The dominance of a component with $w approx - 1$ naturally leads to the $Lambda$CDM model.

= Dynamical Dark Energy <dynamical-dark-energy>
Dark energy need not be a static cosmological constant; instead, it can evolve dynamically with cosmic time. The concept of #emph[dynamical dark energy] was introduced to address the fine-tuning and coincidence problems that plague the cosmological constant interpretation. In such models, the vacuum energy density is replaced by one or more dynamical fields whose energy-momentum tensor produces the required negative pressure. The simplest and most studied class of these models involves scalar fields minimally coupled to gravity, often referred to as #emph[quintessence]@de-review.

In quintessence models, dark energy is represented by a canonical scalar field $phi.alt$ with a potential $V ( phi.alt )$. The Lagrangian density takes the form

$ cal(L) = 1 / 2 partial_mu phi.alt  partial^mu phi.alt - V ( phi.alt ) $

leading to an energy density and pressure given by

$ rho_phi.alt = 1 / 2 dot(phi.alt)^2 + V ( phi.alt ) , quad p_phi.alt = 1/2 dot(phi.alt)^2 - V ( phi.alt ) $

The equation-of-state parameter is therefore

$ w_phi.alt = frac(p_phi.alt, rho_phi.alt c^2) = frac(dot(phi.alt)^2 - 2 V ( phi.alt ), dot(phi.alt)^2 + 2 V ( phi.alt )) $

When the potential energy dominates ($V gt.double dot(phi.alt)^2 \/ 2$), $w_phi.alt approx - 1$, reproducing the cosmological constant behavior. However, as the field evolves, $w_phi.alt$ can vary with redshift, potentially alleviating the coincidence problem by allowing the energy density of the field to track that of matter before dominating at late times.

The dynamics of the field are governed by the Klein-Gordon equation in an expanding universe,

$ dot.double(phi.alt) + 3 H dot(phi.alt) + frac(d V, d phi.alt) = 0 $

This equation admits #emph[tracker] and #emph[thawing] solutions depending on the form of the potential. Tracker models (e.g., inverse power-law potentials $V ( phi.alt ) prop phi.alt^(- n)$) exhibit attractor behavior, making the late-time dynamics relatively insensitive to initial conditions. Thawing models, on the other hand, have the field frozen by Hubble friction in the early universe, only beginning to evolve recently as $H$ decreases.

Other extensions of quintessence include #emph[phantom energy] models, where the kinetic term has the opposite sign, leading to $w < - 1$. While these models can fit observations, they often result in a future “Big Rip” singularity and violate the null energy condition. #emph[k-essence] models generalize the kinetic term by adopting a non-canonical Lagrangian, allowing the sound speed of perturbations to differ from the speed of light and potentially addressing cosmic coincidence dynamically.

Observationally, current data remain consistent with a constant $w = - 1$ but still allow mild time evolution. Parameterizations such as the Chevallier-Polarski-Linder (CPL) form,

$ w ( a ) = w_0 + w_a ( 1 - a ) $

are used to constrain deviations from the cosmological constant case using combined analyses of Type Ia supernovae, baryon acoustic oscillations, and the cosmic microwave background. The latest results suggest $w_0 = - 1.00 plus.minus 0.05$ and $w_a$ consistent with zero, implying no significant deviation from a cosmological constant@dde-review.

Dynamical dark energy remains theoretically appealing because it offers a framework to connect cosmic acceleration with high-energy physics. Scalar fields of the quintessence type naturally appear in theories beyond the Standard Model, including string-inspired moduli and axion-like fields. However, these models are constrained by stability, fine-tuning, and coupling limits, and they have yet to yield a compelling alternative to the cosmological constant. Future precision surveys; such as Euclid, LSST, and the Roman Space Telescope aim to measure $w ( z )$ and its derivatives with sub-percent accuracy, offering the possibility of distinguishing a truly dynamic form of dark energy from a simple cosmological constant.

= Modified Gravity Theories as Alternatives @petrov-intro-to-modified-gravity <modified-gravity-theories-as-alternatives>
An alternative to invoking an exotic form of dark energy is to reconsider the validity of general relativity itself on cosmological scales. The fundamental idea behind #emph[modified gravity theories] is that the observed late-time acceleration may emerge from geometric effects of spacetime rather than an additional energy component. In this view, the Einstein--Hilbert action is altered such that the cosmic expansion accelerates naturally under gravity's own dynamics, without requiring a cosmological constant or scalar field dark energy.

A prototypical example of this class is #emph[$f ( R )$ gravity], in which the Ricci scalar $R$ in the Einstein-Hilbert action is replaced by a general function $f ( R )$:

$ S = frac(1, 16 pi G) integral d^4 x sqrt(- g)  f(R) + S_m $

where $S_m$ is the matter action. Varying this action with respect to the metric yields fourth-order field equations that modify the Einstein tensor with additional curvature terms. These modifications can be interpreted as an effective energy-momentum tensor generating late-time acceleration even in the absence of a cosmological constant. A widely used model proposed by Hu and Sawicki @hu-sawicki, takes the form

$ f ( R ) = R - m^2 (c_1 ( R \/ m^2)^n) / (c_2 ( R \/ m^2 )^n + 1 ) $

which recovers GR at high curvature and produces acceleration at low curvature. Such models are tightly constrained by solar-system and large-scale structure tests but remain viable in limited parameter ranges.

A broader framework is provided by #emph[scalar-tensor theories], where gravity is mediated by both a metric tensor and a scalar field $phi.alt$. The general action is

$ S = integral d^4 x sqrt(- g) [1 / 2 F ( phi.alt ) R - 1 / 2 ( nabla phi.alt )^2 - V ( phi.alt ) + cal(L)_m] $

The Brans-Dicke theory, introduced in the 1960s, is the simplest example, where $F ( phi.alt ) = phi.alt \/ ( 8 pi G )$ and the dimensionless parameter $omega_(upright("BD"))$ quantifies deviations from GR. Modern extensions, such as Horndeski gravity and beyond-Horndeski (degenerate higher-order scalar-tensor) theories, ensure second-order field equations and provide a rich phenomenology. These models can mimic dark energy behavior while preserving local gravitational tests through screening mechanisms like the #emph[chameleon] or #emph[Vainshtein] effects, which suppress deviations from GR in high-density environments.

From an observational standpoint, distinguishing modified gravity from dark energy relies on comparing geometric and dynamical probes of cosmic acceleration. While both can reproduce the same expansion history $H ( z )$, they predict different rates of structure growth. Measurements of redshift-space distortions, weak lensing, and the integrated Sachs-Wolfe effect provide key discriminants. Current data show no statistically significant deviation from GR, but parameterized frameworks such as the gravitational slip parameter $eta = Phi \/ Psi$, etc. are aused to quantify potential modifications.

In summary, modified gravity theories offer a compelling alternative to dark energy by attributing the acceleration of the universe to geometric modifications of spacetime itself. They provide testable predictions connecting cosmic expansion, structure formation, and gravitational physics. Although the simplest models; such as $f ( R )$ gravity, remain consistent with observations at the percent level, future high-precision surveys are expected to decisively constrain or reveal deviations from general relativity.

= Observational Probes and Upcoming Missions <observational-probes-and-upcoming-missions>
The present era of cosmology is defined by precision measurements of the universe's geometry and structure formation. The focus is no longer on detecting cosmic acceleration but on characterizing it. Modern dark-energy science seeks to determine whether the acceleration arises from a true cosmological constant ($w = - 1$), a dynamical field $w ( z )$, or a modification of gravity itself. These questions are addressed through high-precision #emph[geometric] and #emph[growth] probes, now entering a new phase with data from the #emph[Euclid], #emph[Vera Rubi], and #emph[Roman] missions.

Modern analyses express the expansion history as $ (H(z)/H_0)^2 = Omega_m ( 1 + z )^3 + Omega_k ( 1 + z )^2 + Omega_(upright("DE")) f_(upright("DE")) (z) $ where the evolution of dark energy density is given by $ f_(upright("DE")) (z) = exp ( 3 integral_0^z frac(1 + w (z'), 1 + z') d z') . $ Measurements of $H \( z \)$ and the angular diameter distance $D_A \( z \)$; derived from baryon acoustic oscillations (BAO) and supernovae are able to constrain the integral above, providing direct limits on the functional form of $w \( z \)$.

#strong[Euclid (ESA)]\
Launched on #emph[1 July 2023], Euclid is now fully operational and has already released its first imaging data (∼26 million galaxies, March 2025). Its first cosmology-grade data release is expected in #emph[October 2026], with full-sky results by ∼2030. Euclid will map over 15,000 deg² of the extragalactic sky up to $z tilde.op 2$, using optical and near-infrared imaging plus slitless spectroscopy to simultaneously measure weak gravitational lensing and galaxy clustering. These data will yield $H \( z \)$, $D_A \( z \)$, and $f sigma_8 \( z \)$ measurements with sub-percent precision, tightening constraints on $\( w_0 \, w_a \)$ by nearly an order of magnitude relative to current surveys. Euclid's combined probes of geometry via BAO and lensing and growth via RSD, will allow a joint test of general relativity through comparison of expansion and clustering observables.

#strong[Nancy Grace Roman Space Telescope (NASA)]\
Scheduled for #emph[late 2026], Roman will extend dark-energy studies into the near-infrared with three primary probes: high-$z$ Type Ia supernovae, BAO from galaxy redshift surveys, and weak lensing from wide-field imaging. Its Wide-Field Instrument (WFI) will produce high-precision distance measurements that improve absolute calibration of the cosmic distance ladder. When combined with Euclid and Rubin data, Roman's supernova sample will anchor luminosity distances up to $z approx 2.5$, enabling reconstruction of the deceleration parameter $q \( z \)$ and the redshift of acceleration onset $z_(upright("acc"))$. Cross-calibration between Euclid's lensing maps and Roman's SN distances will refine the determination of $w \( z \)$ and its derivative, offering direct tests of dark-energy dynamics.

#strong[Vera C. Rubin Observatory (LSST)]\
Now in commissioning, LSST will provide a time-domain complement to the space-based missions. Its ten-year #emph[Legacy Survey of Space and Time] will image ∼18,000 deg² of sky with deep multiband photometry, discovering millions of supernovae and billions of galaxies. LSST's weak-lensing and clustering data will trace the evolution of the growth index $gamma$ and test whether the relation $f \( z \) tilde.eq Omega_m \( z \)^gamma$ holds with $gamma = 0.55$ (expected in GR). Any significant deviation would signal a modified gravity origin of acceleration.

The next major cosmological dataset will arrive with Euclid's 2026 release, providing immediate tests of $Lambda$CDM through combined lensing-clustering analyses. Roman's and Rubin's first science data, expected near 2027-2028, will extend redshift coverage and improve precision on $w_0$ and $w_a$ to the 1 % level. These missions are designed to be cross-calibrated, forming an integrated system of geometric and dynamical probes. By the end of the decade, their joint analysis will either confirm the cosmological constant as sufficient or detect statistically significant evolution in $w \( z \)$; a discovery that could redefine the standard model of cosmology.
