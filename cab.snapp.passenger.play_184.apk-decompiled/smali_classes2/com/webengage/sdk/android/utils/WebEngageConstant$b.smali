.class public Lcom/webengage/sdk/android/utils/WebEngageConstant$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/utils/WebEngageConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$b;->c:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/webengage/sdk/android/utils/WebEngageConstant$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/webengage/sdk/android/utils/WebEngageConstant$b;->c:Lcom/webengage/sdk/android/utils/WebEngageConstant$a;

    return-void
.end method
