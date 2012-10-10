# Basic Parameters
touch.deviceType = touchScreen
touch.orientationAware = 1

# Touch Size
touch.touchSize.calibration = pressure

# Tool Size
# Driver reports tool size as an area measurement.
#
# Based on empirical measurements, we estimate the size of the tool
# using size = sqrt(22 * rawToolArea + 0) * 6 + 0.
# Values copied from Ventana atmel and panjit touch screens.
touch.toolSize.calibration = area
touch.toolSize.areaScale = 22
touch.toolSize.areaBias = 0
touch.toolSize.linearScale = 6
touch.toolSize.linearBias = 0
touch.toolSize.isSummed = 0

# Pressure
# Driver reports signal strength as pressure.
#
# A normal index finger touch typically registers about 80 signal strength
# units although we don't expect these values to be accurate.
touch.pressure.calibration = amplitude
touch.pressure.source = default
touch.pressure.scale = 0.0125

# Size
touch.size.calibration = normalized

# Orientation
touch.orientation.calibration = vector
