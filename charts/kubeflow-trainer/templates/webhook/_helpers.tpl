{{- /*
Copyright 2025 The Kubeflow authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/ -}}

{{/*
Create the name of the webhook.
*/}}
{{- define "trainer.webhook.name" -}}
{{ include "trainer.name" . }}-webhook
{{- end -}}

{{/*
Common labels for the webhook.
*/}}
{{- define "trainer.webhook.labels" -}}
{{ include "trainer.labels" . }}
app.kubernetes.io/part-of: kubeflow
app.kubernetes.io/component: webhook
{{- end -}}

{{/*
Create the name of the webhook secret.
*/}}
{{- define "trainer.webhook.secret.name" -}}
{{ include "trainer.webhook.name" . }}-cert
{{- end -}}

{{/*
Create the name of the webhook service.
*/}}
{{- define "trainer.webhook.service.name" -}}
{{ include "trainer.manager.service.name" . }}
{{- end -}}

{{/*
Create the name of the validating webhook configuration.
*/}}
{{- define "trainer.webhook.validatingWebhookConfiguration.name" -}}
validator.trainer.kubeflow.org
{{- end -}}
