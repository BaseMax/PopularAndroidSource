.class public final Lcab/snapp/passenger/a/j$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 141
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0193

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/j$b;->a:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/a/j$b;)Landroid/widget/TextView;
    .locals 0

    .line 130
    iget-object p0, p0, Lcab/snapp/passenger/a/j$b;->a:Landroid/widget/TextView;

    return-object p0
.end method
