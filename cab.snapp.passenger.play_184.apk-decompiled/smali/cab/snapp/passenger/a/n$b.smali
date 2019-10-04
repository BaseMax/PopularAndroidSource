.class public final Lcab/snapp/passenger/a/n$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/a/n;

.field private b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/a/n;Landroid/view/View;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcab/snapp/passenger/a/n$b;->a:Lcab/snapp/passenger/a/n;

    .line 329
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a02da

    .line 330
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/n$b;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcab/snapp/passenger/a/n$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
