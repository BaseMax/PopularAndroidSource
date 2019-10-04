.class public Lb/g/b/c;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/b/c$a;
    }
.end annotation


# static fields
.field public static final a:[I

.field public static b:Landroid/util/SparseIntArray;


# instance fields
.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lb/g/b/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    .line 1
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lb/g/b/c;->a:[I

    .line 2
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    .line 3
    sget-object v1, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v2, La/a/a/b;->ConstraintSet_layout_constraintLeft_toLeftOf:I

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 4
    sget-object v1, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v2, La/a/a/b;->ConstraintSet_layout_constraintLeft_toRightOf:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 5
    sget-object v1, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v2, La/a/a/b;->ConstraintSet_layout_constraintRight_toLeftOf:I

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 6
    sget-object v1, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v2, La/a/a/b;->ConstraintSet_layout_constraintRight_toRightOf:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 7
    sget-object v1, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v2, La/a/a/b;->ConstraintSet_layout_constraintTop_toTopOf:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 8
    sget-object v1, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v2, La/a/a/b;->ConstraintSet_layout_constraintTop_toBottomOf:I

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 9
    sget-object v1, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v2, La/a/a/b;->ConstraintSet_layout_constraintBottom_toTopOf:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 10
    sget-object v1, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v2, La/a/a/b;->ConstraintSet_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 11
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 12
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 13
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 14
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 15
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 16
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 17
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 18
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 19
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 20
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 21
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 22
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 23
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 24
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 25
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 26
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 27
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 28
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 29
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 31
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 32
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 33
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 34
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 35
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintLeft_creator:I

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 36
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 37
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 39
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 40
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 41
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 42
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 43
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 44
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 45
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 46
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 47
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 48
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 49
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 50
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 51
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 52
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 53
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 55
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 56
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 57
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 58
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 59
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 60
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 61
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 62
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 63
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 64
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 65
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 66
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 67
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 68
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 69
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 70
    sget-object v0, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    sget v1, La/a/a/b;->ConstraintSet_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/g/b/c;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 78
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 79
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :cond_0
    return p2
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Lb/g/b/c$a;
    .locals 2

    .line 80
    new-instance v0, Lb/g/b/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/g/b/c$a;-><init>(Lb/g/b/b;)V

    .line 81
    sget-object v1, La/a/a/b;->ConstraintSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 82
    invoke-virtual {p0, v0, p1}, Lb/g/b/c;->a(Lb/g/b/c$a;Landroid/content/res/TypedArray;)V

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public a(Landroid/content/Context;I)V
    .locals 4

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 68
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    .line 69
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lb/g/b/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lb/g/b/c$a;

    move-result-object v2

    const-string v3, "Guideline"

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iput-boolean v1, v2, Lb/g/b/c$a;->a:Z

    .line 73
    :cond_1
    iget-object v0, p0, Lb/g/b/c;->c:Ljava/util/HashMap;

    iget v1, v2, Lb/g/b/c$a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 74
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 75
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 77
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 9

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 15
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lb/g/b/c;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v2, v0, :cond_6

    .line 16
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 17
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v4, :cond_5

    .line 18
    iget-object v7, p0, Lb/g/b/c;->c:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    iget-object v7, p0, Lb/g/b/c;->c:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/g/b/c$a;

    .line 21
    iget v8, v7, Lb/g/b/c$a;->sa:I

    if-eq v8, v4, :cond_1

    if-eq v8, v3, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    move-object v3, v5

    check-cast v3, Landroidx/constraintlayout/widget/Barrier;

    .line 23
    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    .line 24
    iget-object v4, v7, Lb/g/b/c$a;->ta:[I

    invoke-virtual {v3, v4}, Lb/g/b/a;->setReferencedIds([I)V

    .line 25
    iget v4, v7, Lb/g/b/c$a;->ra:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 26
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v3

    .line 27
    invoke-virtual {v7, v3}, Lb/g/b/c$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 28
    :cond_1
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 29
    invoke-virtual {v7, v3}, Lb/g/b/c$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 30
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget v3, v7, Lb/g/b/c$a;->J:I

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_4

    .line 33
    iget v3, v7, Lb/g/b/c$a;->U:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 34
    iget v3, v7, Lb/g/b/c$a;->X:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotation(F)V

    .line 35
    iget v3, v7, Lb/g/b/c$a;->Y:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationX(F)V

    .line 36
    iget v3, v7, Lb/g/b/c$a;->Z:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationY(F)V

    .line 37
    iget v3, v7, Lb/g/b/c$a;->aa:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 38
    iget v3, v7, Lb/g/b/c$a;->ba:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 39
    iget v3, v7, Lb/g/b/c$a;->ca:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    .line 40
    iget v3, v7, Lb/g/b/c$a;->ca:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotX(F)V

    .line 41
    :cond_2
    iget v3, v7, Lb/g/b/c$a;->da:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 42
    iget v3, v7, Lb/g/b/c$a;->da:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotY(F)V

    .line 43
    :cond_3
    iget v3, v7, Lb/g/b/c$a;->ea:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 44
    iget v3, v7, Lb/g/b/c$a;->fa:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 45
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_4

    .line 46
    iget v3, v7, Lb/g/b/c$a;->ga:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 47
    iget-boolean v3, v7, Lb/g/b/c$a;->V:Z

    if-eqz v3, :cond_4

    .line 48
    iget v3, v7, Lb/g/b/c$a;->W:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setElevation(F)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 49
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_6
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 51
    iget-object v2, p0, Lb/g/b/c;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/b/c$a;

    .line 52
    iget v5, v2, Lb/g/b/c$a;->sa:I

    if-eq v5, v4, :cond_9

    if-eq v5, v3, :cond_8

    goto :goto_3

    .line 53
    :cond_8
    new-instance v5, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 55
    iget-object v6, v2, Lb/g/b/c$a;->ta:[I

    invoke-virtual {v5, v6}, Lb/g/b/a;->setReferencedIds([I)V

    .line 56
    iget v6, v2, Lb/g/b/c$a;->ra:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 57
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v6

    .line 58
    invoke-virtual {v2, v6}, Lb/g/b/c$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 59
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    :cond_9
    :goto_3
    iget-boolean v5, v2, Lb/g/b/c$a;->a:Z

    if-eqz v5, :cond_7

    .line 61
    new-instance v5, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setId(I)V

    .line 63
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Lb/g/b/c$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 65
    invoke-virtual {p1, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_a
    return-void
.end method

.method public final a(Lb/g/b/c$a;Landroid/content/res/TypedArray;)V
    .locals 7

    .line 84
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 85
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 86
    sget-object v3, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-string v4, "   "

    const-string v5, "ConstraintSet"

    packed-switch v3, :pswitch_data_1

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown attribute 0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 90
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unused attribute 0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lb/g/b/c;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 93
    :pswitch_1
    iget v3, p1, Lb/g/b/c$a;->z:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->z:F

    goto/16 :goto_1

    .line 94
    :pswitch_2
    iget v3, p1, Lb/g/b/c$a;->y:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->y:I

    goto/16 :goto_1

    .line 95
    :pswitch_3
    iget v3, p1, Lb/g/b/c$a;->x:I

    invoke-static {p2, v2, v3}, Lb/g/b/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->x:I

    goto/16 :goto_1

    .line 96
    :pswitch_4
    iget v3, p1, Lb/g/b/c$a;->X:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->X:F

    goto/16 :goto_1

    .line 97
    :pswitch_5
    iget v3, p1, Lb/g/b/c$a;->ga:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->ga:F

    goto/16 :goto_1

    .line 98
    :pswitch_6
    iget v3, p1, Lb/g/b/c$a;->fa:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->fa:F

    goto/16 :goto_1

    .line 99
    :pswitch_7
    iget v3, p1, Lb/g/b/c$a;->ea:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->ea:F

    goto/16 :goto_1

    .line 100
    :pswitch_8
    iget v3, p1, Lb/g/b/c$a;->da:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->da:F

    goto/16 :goto_1

    .line 101
    :pswitch_9
    iget v3, p1, Lb/g/b/c$a;->ca:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->ca:F

    goto/16 :goto_1

    .line 102
    :pswitch_a
    iget v3, p1, Lb/g/b/c$a;->ba:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->ba:F

    goto/16 :goto_1

    .line 103
    :pswitch_b
    iget v3, p1, Lb/g/b/c$a;->aa:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->aa:F

    goto/16 :goto_1

    .line 104
    :pswitch_c
    iget v3, p1, Lb/g/b/c$a;->Z:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->Z:F

    goto/16 :goto_1

    .line 105
    :pswitch_d
    iget v3, p1, Lb/g/b/c$a;->Y:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->Y:F

    goto/16 :goto_1

    :pswitch_e
    const/4 v3, 0x1

    .line 106
    iput-boolean v3, p1, Lb/g/b/c$a;->V:Z

    .line 107
    iget v3, p1, Lb/g/b/c$a;->W:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->W:F

    goto/16 :goto_1

    .line 108
    :pswitch_f
    iget v3, p1, Lb/g/b/c$a;->U:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->U:F

    goto/16 :goto_1

    .line 109
    :pswitch_10
    iget v3, p1, Lb/g/b/c$a;->T:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->T:I

    goto/16 :goto_1

    .line 110
    :pswitch_11
    iget v3, p1, Lb/g/b/c$a;->S:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->S:I

    goto/16 :goto_1

    .line 111
    :pswitch_12
    iget v3, p1, Lb/g/b/c$a;->Q:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->Q:F

    goto/16 :goto_1

    .line 112
    :pswitch_13
    iget v3, p1, Lb/g/b/c$a;->R:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->R:F

    goto/16 :goto_1

    .line 113
    :pswitch_14
    iget v3, p1, Lb/g/b/c$a;->d:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->d:I

    goto/16 :goto_1

    .line 114
    :pswitch_15
    iget v3, p1, Lb/g/b/c$a;->v:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->v:F

    goto/16 :goto_1

    .line 115
    :pswitch_16
    iget v3, p1, Lb/g/b/c$a;->l:I

    invoke-static {p2, v2, v3}, Lb/g/b/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->l:I

    goto/16 :goto_1

    .line 116
    :pswitch_17
    iget v3, p1, Lb/g/b/c$a;->m:I

    invoke-static {p2, v2, v3}, Lb/g/b/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->m:I

    goto/16 :goto_1

    .line 117
    :pswitch_18
    iget v3, p1, Lb/g/b/c$a;->F:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->F:I

    goto/16 :goto_1

    .line 118
    :pswitch_19
    iget v3, p1, Lb/g/b/c$a;->r:I

    invoke-static {p2, v2, v3}, Lb/g/b/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->r:I

    goto/16 :goto_1

    .line 119
    :pswitch_1a
    iget v3, p1, Lb/g/b/c$a;->q:I

    invoke-static {p2, v2, v3}, Lb/g/b/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->q:I

    goto/16 :goto_1

    .line 120
    :pswitch_1b
    iget v3, p1, Lb/g/b/c$a;->I:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->I:I

    goto/16 :goto_1

    .line 121
    :pswitch_1c
    iget v3, p1, Lb/g/b/c$a;->k:I

    invoke-static {p2, v2, v3}, Lb/g/b/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->k:I

    goto/16 :goto_1

    .line 122
    :pswitch_1d
    iget v3, p1, Lb/g/b/c$a;->j:I

    invoke-static {p2, v2, v3}, Lb/g/b/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->j:I

    goto/16 :goto_1

    .line 123
    :pswitch_1e
    iget v3, p1, Lb/g/b/c$a;->E:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->E:I

    goto/16 :goto_1

    .line 124
    :pswitch_1f
    iget v3, p1, Lb/g/b/c$a;->C:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->C:I

    goto/16 :goto_1

    .line 125
    :pswitch_20
    iget v3, p1, Lb/g/b/c$a;->i:I

    invoke-static {p2, v2, v3}, Lb/g/b/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->i:I

    goto/16 :goto_1

    .line 126
    :pswitch_21
    iget v3, p1, Lb/g/b/c$a;->h:I

    invoke-static {p2, v2, v3}, Lb/g/b/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->h:I

    goto/16 :goto_1

    .line 127
    :pswitch_22
    iget v3, p1, Lb/g/b/c$a;->D:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->D:I

    goto/16 :goto_1

    .line 128
    :pswitch_23
    iget v3, p1, Lb/g/b/c$a;->b:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->b:I

    goto/16 :goto_1

    .line 129
    :pswitch_24
    iget v3, p1, Lb/g/b/c$a;->J:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->J:I

    .line 130
    sget-object v2, Lb/g/b/c;->a:[I

    iget v3, p1, Lb/g/b/c$a;->J:I

    aget v2, v2, v3

    iput v2, p1, Lb/g/b/c$a;->J:I

    goto/16 :goto_1

    .line 131
    :pswitch_25
    iget v3, p1, Lb/g/b/c$a;->c:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->c:I

    goto/16 :goto_1

    .line 132
    :pswitch_26
    iget v3, p1, Lb/g/b/c$a;->u:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->u:F

    goto/16 :goto_1

    .line 133
    :pswitch_27
    iget v3, p1, Lb/g/b/c$a;->g:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->g:F

    goto/16 :goto_1

    .line 134
    :pswitch_28
    iget v3, p1, Lb/g/b/c$a;->f:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->f:I

    goto/16 :goto_1

    .line 135
    :pswitch_29
    iget v3, p1, Lb/g/b/c$a;->e:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->e:I

    goto/16 :goto_1

    .line 136
    :pswitch_2a
    iget v3, p1, Lb/g/b/c$a;->L:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->L:I

    goto/16 :goto_1

    .line 137
    :pswitch_2b
    iget v3, p1, Lb/g/b/c$a;->P:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->P:I

    goto/16 :goto_1

    .line 138
    :pswitch_2c
    iget v3, p1, Lb/g/b/c$a;->M:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->M:I

    goto/16 :goto_1

    .line 139
    :pswitch_2d
    iget v3, p1, Lb/g/b/c$a;->K:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->K:I

    goto/16 :goto_1

    .line 140
    :pswitch_2e
    iget v3, p1, Lb/g/b/c$a;->O:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->O:I

    goto :goto_1

    .line 141
    :pswitch_2f
    iget v3, p1, Lb/g/b/c$a;->N:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->N:I

    goto :goto_1

    .line 142
    :pswitch_30
    iget v3, p1, Lb/g/b/c$a;->s:I

    invoke-static {p2, v2, v3}, Lb/g/b/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->s:I

    goto :goto_1

    .line 143
    :pswitch_31
    iget v3, p1, Lb/g/b/c$a;->t:I

    invoke-static {p2, v2, v3}, Lb/g/b/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->t:I

    goto :goto_1

    .line 144
    :pswitch_32
    iget v3, p1, Lb/g/b/c$a;->H:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->H:I

    goto :goto_1

    .line 145
    :pswitch_33
    iget v3, p1, Lb/g/b/c$a;->B:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->B:I

    goto :goto_1

    .line 146
    :pswitch_34
    iget v3, p1, Lb/g/b/c$a;->A:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->A:I

    goto :goto_1

    .line 147
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lb/g/b/c$a;->w:Ljava/lang/String;

    goto :goto_1

    .line 148
    :pswitch_36
    iget v3, p1, Lb/g/b/c$a;->n:I

    invoke-static {p2, v2, v3}, Lb/g/b/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->n:I

    goto :goto_1

    .line 149
    :pswitch_37
    iget v3, p1, Lb/g/b/c$a;->o:I

    invoke-static {p2, v2, v3}, Lb/g/b/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->o:I

    goto :goto_1

    .line 150
    :pswitch_38
    iget v3, p1, Lb/g/b/c$a;->G:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->G:I

    goto :goto_1

    .line 151
    :pswitch_39
    iget v3, p1, Lb/g/b/c$a;->p:I

    invoke-static {p2, v2, v3}, Lb/g/b/c;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Lb/g/b/c$a;->p:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lb/g/b/d;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Lb/g/b/c;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lb/g/b/d$a;

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 6
    iget-object v5, p0, Lb/g/b/c;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7
    iget-object v5, p0, Lb/g/b/c;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lb/g/b/c$a;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lb/g/b/c$a;-><init>(Lb/g/b/b;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    iget-object v5, p0, Lb/g/b/c;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/b/c$a;

    .line 9
    instance-of v6, v2, Lb/g/b/a;

    if-eqz v6, :cond_1

    .line 10
    check-cast v2, Lb/g/b/a;

    .line 11
    invoke-static {v5, v2, v4, v3}, Lb/g/b/c$a;->a(Lb/g/b/c$a;Lb/g/b/a;ILb/g/b/d$a;)V

    .line 12
    :cond_1
    invoke-static {v5, v4, v3}, Lb/g/b/c$a;->a(Lb/g/b/c$a;ILb/g/b/d$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method
