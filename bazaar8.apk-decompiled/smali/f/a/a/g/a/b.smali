.class public Lf/a/a/g/a/b;
.super Ljava/lang/Object;
.source "AddressListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/g/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/g/a/a;

.field public final synthetic b:Lf/a/a/g/a/d;


# direct methods
.method public constructor <init>(Lf/a/a/g/a/d;Lf/a/a/g/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/a/b;->b:Lf/a/a/g/a/d;

    iput-object p2, p0, Lf/a/a/g/a/b;->a:Lf/a/a/g/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/a/a/g/a/b;->b:Lf/a/a/g/a/d;

    invoke-static {p1}, Lf/a/a/g/a/d;->a(Lf/a/a/g/a/d;)Lf/a/a/g/a/n$a;

    move-result-object p1

    iget-object v0, p0, Lf/a/a/g/a/b;->a:Lf/a/a/g/a/a;

    invoke-interface {p1, v0}, Lf/a/a/g/a/n$a;->a(Lf/a/a/g/a/a;)V

    return-void
.end method
