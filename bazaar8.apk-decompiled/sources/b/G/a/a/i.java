package b.g.a.a;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.Arrays;

/* compiled from: Helper */
public class i extends ConstraintWidget {
    public ConstraintWidget[] pa = new ConstraintWidget[4];
    public int qa = 0;

    public void I() {
        this.qa = 0;
    }

    public void b(ConstraintWidget constraintWidget) {
        int i2 = this.qa + 1;
        ConstraintWidget[] constraintWidgetArr = this.pa;
        if (i2 > constraintWidgetArr.length) {
            this.pa = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr, constraintWidgetArr.length * 2);
        }
        ConstraintWidget[] constraintWidgetArr2 = this.pa;
        int i3 = this.qa;
        constraintWidgetArr2[i3] = constraintWidget;
        this.qa = i3 + 1;
    }
}
