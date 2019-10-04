.class public Lb/b/g/E;
.super Landroid/widget/ToggleButton;
.source "AppCompatToggleButton.java"


# instance fields
.field public final a:Lb/b/g/C;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101004b

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lb/b/g/E;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Lb/b/g/C;

    invoke-direct {p1, p0}, Lb/b/g/C;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lb/b/g/E;->a:Lb/b/g/C;

    .line 4
    iget-object p1, p0, Lb/b/g/E;->a:Lb/b/g/C;

    invoke-virtual {p1, p2, p3}, Lb/b/g/C;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method
