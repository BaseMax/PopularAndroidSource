.class public Lcab/snapp/passenger/a/m$f;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field f:Landroid/view/View;

.field final synthetic g:Lcab/snapp/passenger/a/m;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/a/m;Landroid/view/View;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcab/snapp/passenger/a/m$f;->g:Lcab/snapp/passenger/a/m;

    .line 373
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 374
    iput-object p2, p0, Lcab/snapp/passenger/a/m$f;->f:Landroid/view/View;

    return-void
.end method
