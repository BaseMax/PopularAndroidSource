.class public final synthetic Lcom/ebay/app/-$$Lambda$AlertDialogFragment$_0Utr7YnrU44JJMyYLsTf0hvF88;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/ebay/app/AlertDialogFragment;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/app/AlertDialogFragment;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$_0Utr7YnrU44JJMyYLsTf0hvF88;->f$0:Lcom/ebay/app/AlertDialogFragment;

    iput p2, p0, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$_0Utr7YnrU44JJMyYLsTf0hvF88;->f$1:I

    iput p3, p0, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$_0Utr7YnrU44JJMyYLsTf0hvF88;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$_0Utr7YnrU44JJMyYLsTf0hvF88;->f$0:Lcom/ebay/app/AlertDialogFragment;

    iget v1, p0, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$_0Utr7YnrU44JJMyYLsTf0hvF88;->f$1:I

    iget v2, p0, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$_0Utr7YnrU44JJMyYLsTf0hvF88;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/ebay/app/AlertDialogFragment;->lambda$setDialogListener$2(Lcom/ebay/app/AlertDialogFragment;IILandroid/content/DialogInterface;I)V

    return-void
.end method
