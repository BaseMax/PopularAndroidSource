.class public final Lcab/snapp/passenger/a/f$b;
.super Lcab/snapp/passenger/a/f$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/appcompat/widget/AppCompatTextView;

.field final synthetic b:Lcab/snapp/passenger/a/f;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/a/f;Landroid/view/View;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcab/snapp/passenger/a/f$b;->b:Lcab/snapp/passenger/a/f;

    .line 214
    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/a/f$d;-><init>(Lcab/snapp/passenger/a/f;Landroid/view/View;)V

    const p1, 0x7f0a0151

    .line 215
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/f$b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method
