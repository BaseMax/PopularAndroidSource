package com.mapbox.mapboxsdk.location;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.SystemClock;
import android.view.WindowManager;
import com.mapbox.mapboxsdk.log.Logger;
import java.util.ArrayList;
import java.util.List;

class LocationComponentCompassEngine implements SensorEventListener, CompassEngine {
    private static final float ALPHA = 0.45f;
    static final int SENSOR_DELAY_MICROS = 100000;
    private static final String TAG = "Mbgl-LocationComponentCompassEngine";
    private final List<CompassListener> compassListeners = new ArrayList();
    private Sensor compassSensor;
    private long compassUpdateNextTimestamp;
    private Sensor gravitySensor;
    private float[] gravityValues = new float[3];
    private int lastAccuracySensorStatus;
    private float lastHeading;
    private Sensor magneticFieldSensor;
    private float[] magneticValues = new float[3];
    private float[] rotationMatrix = new float[9];
    private float[] rotationVectorValue;
    private final SensorManager sensorManager;
    private float[] truncatedRotationVectorValue = new float[4];
    private final WindowManager windowManager;

    LocationComponentCompassEngine(WindowManager windowManager2, SensorManager sensorManager2) {
        this.windowManager = windowManager2;
        this.sensorManager = sensorManager2;
        this.compassSensor = sensorManager2.getDefaultSensor(11);
        if (this.compassSensor == null) {
            if (isGyroscopeAvailable()) {
                Logger.d(TAG, "Rotation vector sensor not supported on device, falling back to orientation.");
                this.compassSensor = sensorManager2.getDefaultSensor(3);
                return;
            }
            Logger.d(TAG, "Rotation vector sensor not supported on device, falling back to accelerometer and magnetic field.");
            this.gravitySensor = sensorManager2.getDefaultSensor(1);
            this.magneticFieldSensor = sensorManager2.getDefaultSensor(2);
        }
    }

    public void addCompassListener(CompassListener compassListener) {
        if (this.compassListeners.isEmpty()) {
            registerSensorListeners();
        }
        this.compassListeners.add(compassListener);
    }

    public void removeCompassListener(CompassListener compassListener) {
        this.compassListeners.remove(compassListener);
        if (this.compassListeners.isEmpty()) {
            unregisterSensorListeners();
        }
    }

    public int getLastAccuracySensorStatus() {
        return this.lastAccuracySensorStatus;
    }

    public float getLastHeading() {
        return this.lastHeading;
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime >= this.compassUpdateNextTimestamp) {
            if (this.lastAccuracySensorStatus == 0) {
                Logger.d(TAG, "Compass sensor is unreliable, device calibration is needed.");
                return;
            }
            if (sensorEvent.sensor.getType() == 11) {
                this.rotationVectorValue = getRotationVectorFromSensorEvent(sensorEvent);
                updateOrientation();
            } else if (sensorEvent.sensor.getType() == 3) {
                notifyCompassChangeListeners((sensorEvent.values[0] + 360.0f) % 360.0f);
            } else if (sensorEvent.sensor.getType() == 1) {
                this.gravityValues = lowPassFilter(getRotationVectorFromSensorEvent(sensorEvent), this.gravityValues);
                updateOrientation();
            } else if (sensorEvent.sensor.getType() == 2) {
                this.magneticValues = lowPassFilter(getRotationVectorFromSensorEvent(sensorEvent), this.magneticValues);
                updateOrientation();
            }
            this.compassUpdateNextTimestamp = elapsedRealtime + 500;
        }
    }

    public void onAccuracyChanged(Sensor sensor, int i) {
        if (this.lastAccuracySensorStatus != i) {
            for (CompassListener onCompassAccuracyChange : this.compassListeners) {
                onCompassAccuracyChange.onCompassAccuracyChange(i);
            }
            this.lastAccuracySensorStatus = i;
        }
    }

    private boolean isGyroscopeAvailable() {
        return this.sensorManager.getDefaultSensor(4) != null;
    }

    private void updateOrientation() {
        float[] fArr = this.rotationVectorValue;
        if (fArr != null) {
            SensorManager.getRotationMatrixFromVector(this.rotationMatrix, fArr);
        } else {
            SensorManager.getRotationMatrix(this.rotationMatrix, null, this.gravityValues, this.magneticValues);
        }
        int rotation = this.windowManager.getDefaultDisplay().getRotation();
        int i = 131;
        int i2 = 129;
        if (rotation == 1) {
            i = 3;
        } else if (rotation == 2) {
            i = 129;
            i2 = 131;
        } else if (rotation != 3) {
            i = 1;
            i2 = 3;
        } else {
            i2 = 1;
        }
        float[] fArr2 = new float[9];
        SensorManager.remapCoordinateSystem(this.rotationMatrix, i, i2, fArr2);
        float[] fArr3 = new float[3];
        SensorManager.getOrientation(fArr2, fArr3);
        notifyCompassChangeListeners((float) Math.toDegrees((double) fArr3[0]));
    }

    private void notifyCompassChangeListeners(float f) {
        for (CompassListener onCompassChanged : this.compassListeners) {
            onCompassChanged.onCompassChanged(f);
        }
        this.lastHeading = f;
    }

    private void registerSensorListeners() {
        if (isCompassSensorAvailable()) {
            this.sensorManager.registerListener(this, this.compassSensor, SENSOR_DELAY_MICROS);
            return;
        }
        this.sensorManager.registerListener(this, this.gravitySensor, SENSOR_DELAY_MICROS);
        this.sensorManager.registerListener(this, this.magneticFieldSensor, SENSOR_DELAY_MICROS);
    }

    private void unregisterSensorListeners() {
        if (isCompassSensorAvailable()) {
            this.sensorManager.unregisterListener(this, this.compassSensor);
            return;
        }
        this.sensorManager.unregisterListener(this, this.gravitySensor);
        this.sensorManager.unregisterListener(this, this.magneticFieldSensor);
    }

    private boolean isCompassSensorAvailable() {
        return this.compassSensor != null;
    }

    private float[] lowPassFilter(float[] fArr, float[] fArr2) {
        if (fArr2 == null) {
            return fArr;
        }
        for (int i = 0; i < fArr.length; i++) {
            fArr2[i] = fArr2[i] + ((fArr[i] - fArr2[i]) * ALPHA);
        }
        return fArr2;
    }

    private float[] getRotationVectorFromSensorEvent(SensorEvent sensorEvent) {
        if (sensorEvent.values.length <= 4) {
            return sensorEvent.values;
        }
        System.arraycopy(sensorEvent.values, 0, this.truncatedRotationVectorValue, 0, 4);
        return this.truncatedRotationVectorValue;
    }
}
