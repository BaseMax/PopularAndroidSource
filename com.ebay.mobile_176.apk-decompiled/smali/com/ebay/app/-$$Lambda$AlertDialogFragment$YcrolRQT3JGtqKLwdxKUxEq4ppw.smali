.class public final synthetic Lcom/ebay/app/-$$Lambda$AlertDialogFragment$YcrolRQT3JGtqKLwdxKUxEq4ppw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/ebay/app/AlertDialogFragment;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/app/AlertDialogFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$YcrolRQT3JGtqKLwdxKUxEq4ppw;->f$0:Lcom/ebay/app/AlertDialogFragment;

    iput p2, p0, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$YcrolRQT3JGtqKLwdxKUxEq4ppw;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$YcrolRQT3JGtqKLwdxKUxEq4ppw;->f$0:Lcom/ebay/app/AlertDialogFragment;

    iget v1, p0, Lcom/ebay/app/-$$Lambda$AlertDialogFragment$YcrolRQT3JGtqKLwdxKUxEq4ppw;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/ebay/app/AlertDialogFragment;->lambda$onCreateDialog$1(Lcom/ebay/app/AlertDialogFragment;ILandroid/content/DialogInterface;I)V

    return-void
.end method
