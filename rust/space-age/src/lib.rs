const EARTH_ORBITAL_PERIOD: f64 = 31557600f64;

#[derive(Debug)]
pub struct Duration {
    time: u64,
}

impl From<u64> for Duration {
    fn from(s: u64) -> Self {
        Duration { time: s }
    }
}

pub trait Planet {
    fn years_during(d: &Duration) -> f64;
}

pub struct Mercury;
pub struct Venus;
pub struct Earth;
pub struct Mars;
pub struct Jupiter;
pub struct Saturn;
pub struct Uranus;
pub struct Neptune;

impl Planet for Mercury {
    fn years_during(d: &Duration) -> f64 {
        d.time as f64 / EARTH_ORBITAL_PERIOD / 0.2408467
    }
}
impl Planet for Venus {
    fn years_during(d: &Duration) -> f64 {
        d.time as f64 / EARTH_ORBITAL_PERIOD / 0.61519726
    }
}
impl Planet for Earth {
    fn years_during(d: &Duration) -> f64 {
        d.time as f64 / EARTH_ORBITAL_PERIOD / 1.0
    }
}
impl Planet for Mars {
    fn years_during(d: &Duration) -> f64 {
        d.time as f64 / EARTH_ORBITAL_PERIOD / 1.8808158
    }
}
impl Planet for Jupiter {
    fn years_during(d: &Duration) -> f64 {
        d.time as f64 / EARTH_ORBITAL_PERIOD / 11.862615
    }
}
impl Planet for Saturn {
    fn years_during(d: &Duration) -> f64 {
        d.time as f64 / EARTH_ORBITAL_PERIOD / 29.447498
    }
}
impl Planet for Uranus {
    fn years_during(d: &Duration) -> f64 {
        d.time as f64 / EARTH_ORBITAL_PERIOD / 84.016846
    }
}
impl Planet for Neptune {
    fn years_during(d: &Duration) -> f64 {
        d.time as f64 / EARTH_ORBITAL_PERIOD / 164.79132
    }
}
