.class Lcom/ebay/app/AlertDialogFragment$Fields;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/app/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Fields"
.end annotation


# instance fields
.field private checkedItems:[Z

.field private items:[Ljava/lang/CharSequence;

.field public linksClickable:Z

.field private message:Ljava/lang/CharSequence;

.field private messageAsWebview:Z

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private positiveButtonText:Ljava/lang/CharSequence;

.field public retainInstance:Z

.field private title:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/app/AlertDialogFragment$1;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/ebay/app/AlertDialogFragment$Fields;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/app/AlertDialogFragment$Fields;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/ebay/app/AlertDialogFragment$Fields;->messageAsWebview:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ebay/app/AlertDialogFragment$Fields;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/ebay/app/AlertDialogFragment$Fields;->messageAsWebview:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/ebay/app/AlertDialogFragment$Fields;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ebay/app/AlertDialogFragment$Fields;->title:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/ebay/app/AlertDialogFragment$Fields;->message:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ebay/app/AlertDialogFragment$Fields;->message:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/ebay/app/AlertDialogFragment$Fields;->positiveButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ebay/app/AlertDialogFragment$Fields;->positiveButtonText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/ebay/app/AlertDialogFragment$Fields;->negativeButtonText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$502(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ebay/app/AlertDialogFragment$Fields;->negativeButtonText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ebay/app/AlertDialogFragment$Fields;)[Ljava/lang/CharSequence;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/ebay/app/AlertDialogFragment$Fields;->items:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$602(Lcom/ebay/app/AlertDialogFragment$Fields;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ebay/app/AlertDialogFragment$Fields;->items:[Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ebay/app/AlertDialogFragment$Fields;)[Z
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/ebay/app/AlertDialogFragment$Fields;->checkedItems:[Z

    return-object p0
.end method

.method static synthetic access$702(Lcom/ebay/app/AlertDialogFragment$Fields;[Z)[Z
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ebay/app/AlertDialogFragment$Fields;->checkedItems:[Z

    return-object p1
.end method
