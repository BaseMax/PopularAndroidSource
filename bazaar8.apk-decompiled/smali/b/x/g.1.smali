.class public Lb/x/g;
.super Ljava/lang/Object;
.source "ListPreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/x/h;->a(Lb/b/a/l$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/x/h;


# direct methods
.method public constructor <init>(Lb/x/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/x/g;->a:Lb/x/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/x/g;->a:Lb/x/h;

    iput p2, v0, Lb/x/h;->ra:I

    const/4 p2, -0x1

    .line 2
    invoke-virtual {v0, p1, p2}, Lb/x/o;->onClick(Landroid/content/DialogInterface;I)V

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
