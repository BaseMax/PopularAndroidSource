package me.a.a.a.a.a;

import android.graphics.Canvas;
import android.view.View;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.List;

public final class d implements c {

    /* renamed from: a  reason: collision with root package name */
    protected final RecyclerView f8681a;

    /* renamed from: b  reason: collision with root package name */
    protected final a f8682b;
    protected boolean c;

    protected interface a {
        boolean isInAbsoluteEnd();

        boolean isInAbsoluteStart();
    }

    protected class b implements a {
        protected b() {
        }

        public final boolean isInAbsoluteStart() {
            return !d.this.f8681a.canScrollHorizontally(-1);
        }

        public final boolean isInAbsoluteEnd() {
            return !d.this.f8681a.canScrollHorizontally(1);
        }
    }

    protected class c implements a {
        protected c() {
        }

        public final boolean isInAbsoluteStart() {
            return !d.this.f8681a.canScrollVertically(-1);
        }

        public final boolean isInAbsoluteEnd() {
            return !d.this.f8681a.canScrollVertically(1);
        }
    }

    /* renamed from: me.a.a.a.a.a.d$d  reason: collision with other inner class name */
    static class C0207d extends ItemTouchHelper.Callback {

        /* renamed from: b  reason: collision with root package name */
        final ItemTouchHelper.Callback f8686b;

        /* synthetic */ C0207d(ItemTouchHelper.Callback callback, byte b2) {
            this(callback);
        }

        private C0207d(ItemTouchHelper.Callback callback) {
            this.f8686b = callback;
        }

        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return this.f8686b.getMovementFlags(recyclerView, viewHolder);
        }

        public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            return this.f8686b.onMove(recyclerView, viewHolder, viewHolder2);
        }

        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
            this.f8686b.onSwiped(viewHolder, i);
        }

        public int convertToAbsoluteDirection(int i, int i2) {
            return this.f8686b.convertToAbsoluteDirection(i, i2);
        }

        public boolean canDropOver(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            return this.f8686b.canDropOver(recyclerView, viewHolder, viewHolder2);
        }

        public boolean isLongPressDragEnabled() {
            return this.f8686b.isLongPressDragEnabled();
        }

        public boolean isItemViewSwipeEnabled() {
            return this.f8686b.isItemViewSwipeEnabled();
        }

        public int getBoundingBoxMargin() {
            return this.f8686b.getBoundingBoxMargin();
        }

        public float getSwipeThreshold(RecyclerView.ViewHolder viewHolder) {
            return this.f8686b.getSwipeThreshold(viewHolder);
        }

        public float getMoveThreshold(RecyclerView.ViewHolder viewHolder) {
            return this.f8686b.getMoveThreshold(viewHolder);
        }

        public RecyclerView.ViewHolder chooseDropTarget(RecyclerView.ViewHolder viewHolder, List<RecyclerView.ViewHolder> list, int i, int i2) {
            return this.f8686b.chooseDropTarget(viewHolder, list, i, i2);
        }

        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
            this.f8686b.onSelectedChanged(viewHolder, i);
        }

        public void onMoved(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, int i, RecyclerView.ViewHolder viewHolder2, int i2, int i3, int i4) {
            this.f8686b.onMoved(recyclerView, viewHolder, i, viewHolder2, i2, i3, i4);
        }

        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            this.f8686b.clearView(recyclerView, viewHolder);
        }

        public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            this.f8686b.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, z);
        }

        public void onChildDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            this.f8686b.onChildDrawOver(canvas, recyclerView, viewHolder, f, f2, i, z);
        }

        public long getAnimationDuration(RecyclerView recyclerView, int i, float f, float f2) {
            return this.f8686b.getAnimationDuration(recyclerView, i, f, f2);
        }

        public int interpolateOutOfBoundsScroll(RecyclerView recyclerView, int i, int i2, int i3, long j) {
            return this.f8686b.interpolateOutOfBoundsScroll(recyclerView, i, i2, i3, j);
        }
    }

    public d(RecyclerView recyclerView) {
        int i;
        this.c = false;
        this.f8681a = recyclerView;
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        boolean z = layoutManager instanceof LinearLayoutManager;
        if (z || (layoutManager instanceof StaggeredGridLayoutManager)) {
            if (z) {
                i = ((LinearLayoutManager) layoutManager).getOrientation();
            } else {
                i = ((StaggeredGridLayoutManager) layoutManager).getOrientation();
            }
            if (i == 0) {
                this.f8682b = new b();
            } else {
                this.f8682b = new c();
            }
        } else {
            throw new IllegalArgumentException("Recycler views with custom layout managers are not supported by this adapter out of the box.Try implementing and providing an explicit 'impl' parameter to the other c'tors, or otherwise create a custom adapter subclass of your own.");
        }
    }

    public d(RecyclerView recyclerView, a aVar) {
        this.c = false;
        this.f8681a = recyclerView;
        this.f8682b = aVar;
    }

    public d(RecyclerView recyclerView, ItemTouchHelper.Callback callback) {
        this(recyclerView);
        a(callback);
    }

    public d(RecyclerView recyclerView, a aVar, ItemTouchHelper.Callback callback) {
        this(recyclerView, aVar);
        a(callback);
    }

    private void a(ItemTouchHelper.Callback callback) {
        new ItemTouchHelper(new C0207d(callback) {
            public final void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
                d.this.c = i != 0;
                super.onSelectedChanged(viewHolder, i);
            }
        }).attachToRecyclerView(this.f8681a);
    }

    public final View getView() {
        return this.f8681a;
    }

    public final boolean isInAbsoluteStart() {
        return !this.c && this.f8682b.isInAbsoluteStart();
    }

    public final boolean isInAbsoluteEnd() {
        return !this.c && this.f8682b.isInAbsoluteEnd();
    }
}
