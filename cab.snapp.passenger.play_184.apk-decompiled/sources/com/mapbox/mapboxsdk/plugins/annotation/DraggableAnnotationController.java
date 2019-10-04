package com.mapbox.mapboxsdk.plugins.annotation;

import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import com.mapbox.android.b.a;
import com.mapbox.android.b.c;
import com.mapbox.android.b.d;
import com.mapbox.geojson.Geometry;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.plugins.annotation.Annotation;
import com.mapbox.mapboxsdk.plugins.annotation.OnAnnotationDragListener;

final class DraggableAnnotationController<T extends Annotation, D extends OnAnnotationDragListener<T>> {
    private AnnotationManager<?, T, ?, D, ?, ?> annotationManager;
    /* access modifiers changed from: private */
    public T draggedAnnotation;
    private final MapboxMap mapboxMap;
    private final int touchAreaMaxX;
    private final int touchAreaMaxY;
    private final int touchAreaShiftX;
    private final int touchAreaShiftY;

    class AnnotationMoveGestureListener implements d.a {
        private AnnotationMoveGestureListener() {
        }

        public boolean onMoveBegin(d dVar) {
            return DraggableAnnotationController.this.onMoveBegin(dVar);
        }

        public boolean onMove(d dVar, float f, float f2) {
            return DraggableAnnotationController.this.onMove(dVar);
        }

        public void onMoveEnd(d dVar, float f, float f2) {
            DraggableAnnotationController.this.onMoveEnd();
        }
    }

    DraggableAnnotationController(MapView mapView, MapboxMap mapboxMap2) {
        this(mapView, mapboxMap2, new a(mapView.getContext(), false), mapView.getScrollX(), mapView.getScrollY(), mapView.getMeasuredWidth(), mapView.getMeasuredHeight());
    }

    public DraggableAnnotationController(MapView mapView, MapboxMap mapboxMap2, final a aVar, int i, int i2, int i3, int i4) {
        this.mapboxMap = mapboxMap2;
        this.touchAreaShiftX = i;
        this.touchAreaShiftY = i2;
        this.touchAreaMaxX = i3;
        this.touchAreaMaxY = i4;
        aVar.setMoveGestureListener(new AnnotationMoveGestureListener());
        mapView.setOnTouchListener(new View.OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                aVar.onTouchEvent(motionEvent);
                return DraggableAnnotationController.this.draggedAnnotation != null;
            }
        });
    }

    /* access modifiers changed from: package-private */
    public final void injectAnnotationManager(AnnotationManager<?, T, ?, D, ?, ?> annotationManager2) {
        this.annotationManager = annotationManager2;
    }

    /* access modifiers changed from: package-private */
    public final void onSourceUpdated() {
        stopDragging(this.draggedAnnotation);
    }

    /* access modifiers changed from: package-private */
    public final boolean onMoveBegin(d dVar) {
        if (dVar.getPointersCount() == 1) {
            T queryMapForFeatures = this.annotationManager.queryMapForFeatures(dVar.getFocalPoint());
            if (queryMapForFeatures != null) {
                return startDragging(queryMapForFeatures);
            }
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public final boolean onMove(d dVar) {
        if (this.draggedAnnotation == null || (dVar.getPointersCount() <= 1 && this.draggedAnnotation.isDraggable())) {
            if (this.draggedAnnotation != null) {
                c moveObject = dVar.getMoveObject(0);
                PointF pointF = new PointF(moveObject.getCurrentX() - ((float) this.touchAreaShiftX), moveObject.getCurrentY() - ((float) this.touchAreaShiftY));
                if (pointF.x < 0.0f || pointF.y < 0.0f || pointF.x > ((float) this.touchAreaMaxX) || pointF.y > ((float) this.touchAreaMaxY)) {
                    stopDragging(this.draggedAnnotation);
                    return true;
                }
                Geometry offsetGeometry = this.draggedAnnotation.getOffsetGeometry(this.mapboxMap.getProjection(), moveObject, (float) this.touchAreaShiftX, (float) this.touchAreaShiftY);
                if (offsetGeometry != null) {
                    this.draggedAnnotation.setGeometry(offsetGeometry);
                    this.annotationManager.internalUpdateSource();
                    if (!this.annotationManager.getDragListeners().isEmpty()) {
                        for (D onAnnotationDrag : this.annotationManager.getDragListeners()) {
                            onAnnotationDrag.onAnnotationDrag(this.draggedAnnotation);
                        }
                    }
                    return true;
                }
            }
            return false;
        }
        stopDragging(this.draggedAnnotation);
        return true;
    }

    /* access modifiers changed from: package-private */
    public final void onMoveEnd() {
        stopDragging(this.draggedAnnotation);
    }

    /* access modifiers changed from: package-private */
    public final boolean startDragging(T t) {
        if (!t.isDraggable()) {
            return false;
        }
        if (!this.annotationManager.getDragListeners().isEmpty()) {
            for (D onAnnotationDragStarted : this.annotationManager.getDragListeners()) {
                onAnnotationDragStarted.onAnnotationDragStarted(t);
            }
        }
        this.draggedAnnotation = t;
        return true;
    }

    /* access modifiers changed from: package-private */
    public final void stopDragging(T t) {
        if (t != null && !this.annotationManager.getDragListeners().isEmpty()) {
            for (D onAnnotationDragFinished : this.annotationManager.getDragListeners()) {
                onAnnotationDragFinished.onAnnotationDragFinished(t);
            }
        }
        this.draggedAnnotation = null;
    }
}
