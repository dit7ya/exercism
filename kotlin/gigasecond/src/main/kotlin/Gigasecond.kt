import java.time.LocalDate
import java.time.LocalDateTime

class Gigasecond {
    val giga: Long = 1_000_000_000
    var date = LocalDateTime.now()
    constructor(localDateTime: LocalDateTime) {
        date = localDateTime.plusSeconds(giga)
    }

    constructor(localDate: LocalDate) {
        date = localDate.atStartOfDay().plusSeconds(giga)
    }
}
