.class final Lcab/snapp/passenger/units/phone_verification/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/phone_verification/c;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/phone_verification/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/phone_verification/c;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcab/snapp/passenger/units/phone_verification/c$3;->a:Lcab/snapp/passenger/units/phone_verification/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 395
    :cond_0
    iget-object p2, p0, Lcab/snapp/passenger/units/phone_verification/c$3;->a:Lcab/snapp/passenger/units/phone_verification/c;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/c/d;->convertPersianToEnglishNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcab/snapp/passenger/units/phone_verification/c;->b(Lcab/snapp/passenger/units/phone_verification/c;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
